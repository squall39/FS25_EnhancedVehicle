--
-- Mod: FS25_EnhancedVehicle_Loader
--
-- Author: Majo76
-- email: ls (at) majo76 (dot) de
-- @Date: 12.11.2024
-- @Version: 1.0.0.0

-- #############################################################################

-- #############################################################################
-- ### Debug logger
-- ### Examples:
-- ### Log.info("Hello World") -> [INFO] Hello World
-- ### Log.debug("Hello World", "key", "value") -> [DEBUG] Hello World, key=value
Log = {
  LEVEL = {
    OFF   = {intValue = 0, name = "OFF"},
    INFO  = {intValue = 1, name = "INFO"},
    DEBUG = {intValue = 2, name = "DEBUG"},
    TRACE = {intValue = 3, name = "TRACE"}
  },

  info = function(message, ...)
    Log.log(Log.LEVEL.INFO, message, ...)
  end,

  debug = function(message, ...)
    Log.log(Log.LEVEL.DEBUG, message, ...)
  end,

  trace = function(message, ...)
    Log.log(Log.LEVEL.TRACE, message, ...)
  end,

  log = function(level, message, ...)
    local args = {...}
    local attributes = ""
    for i = 1, #args, 2 do
      attributes = attributes .. ", " .. tostring(args[i]) .. "=" .. tostring(args[i + 1])
    end

    if debug >= level.intValue then
      print("[" .. level.name .. "] " .. message .. attributes)
    end
  end
}

-- Set the debug level
debug = Log.LEVEL.OFF.intValue

local directory = g_currentModDirectory
local modName = g_currentModName

source(Utils.getFilename("FS25_EnhancedVehicle.lua", directory))
source(Utils.getFilename("FS25_EnhancedVehicle_Event.lua", directory))
source(Utils.getFilename("ui/FS25_EnhancedVehicle_UI.lua", directory))
source(Utils.getFilename("ui/FS25_EnhancedVehicle_HUD.lua", directory))

-- include our libUtils
source(Utils.getFilename("libUtils.lua", g_currentModDirectory))
lU = libUtils()
lU:setDebug(0)

-- include our new libConfig XML management
source(Utils.getFilename("libConfig.lua", g_currentModDirectory))
lC = libConfig("FS25_EnhancedVehicle", 1, 0)
lC:setDebug(0)

local EnhancedVehicle

local function isEnabled()
  return EnhancedVehicle ~= nil
end

-- #############################################################################

function EV_init()
  Log.info("EV_init()")
  
  -- hook into early load
  Mission00.load = Utils.prependedFunction(Mission00.load, EV_load)
  -- hook into late load
  Mission00.loadMission00Finished = Utils.appendedFunction(Mission00.loadMission00Finished, EV_loadedMission)

  -- hook into late unload
  FSBaseMission.delete = Utils.appendedFunction(FSBaseMission.delete, EV_unload)

  -- hook into validateTypes
  TypeManager.validateTypes = Utils.prependedFunction(TypeManager.validateTypes, EV_validateTypes)
end

-- #############################################################################

function EV_load(mission)
  Log.info("EV_load()")
  
  -- create our EV class
  assert(g_EnhancedVehicle == nil)
  EnhancedVehicle = FS25_EnhancedVehicle:new(mission, directory, modName, g_i18n, g_gui, g_gui.inputManager, g_messageCenter)
  getfenv(0)["g_EnhancedVehicle"] = EnhancedVehicle

  mission.EnhancedVehicle = EnhancedVehicle

  addModEventListener(EnhancedVehicle);
end

-- #############################################################################

function EV_unload()
  Log.info("EV_unload()")

  if not isEnabled() then
    return
  end

  removeModEventListener(EnhancedVehicle)
  
  EnhancedVehicle:delete()
  EnhancedVehicle = nil
  getfenv(0)["g_EnhancedVehicle"] = nil
end

-- #############################################################################

function EV_loadedMission(mission)
  Log.info("EV_load()")

  if not isEnabled() then
    return
  end

  if mission.cancelLoading then
    return
  end

  EnhancedVehicle:onMissionLoaded(mission)
end

-- #############################################################################

function EV_validateTypes(types)
  Log.info("EV_validateTypes()")
    
  -- attach only to vehicles
  if (types.typeName == 'vehicle') then
    FS25_EnhancedVehicle.installSpecializations(g_vehicleTypeManager, g_specializationManager, directory, modName)
  end
end

-- #############################################################################

EV_init()
