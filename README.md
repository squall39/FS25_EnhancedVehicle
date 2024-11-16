# FS25_EnhancedVehicle

**Direkter Download / direct download: [FS25_EnhancedVehicle.zip](https://github.com/ZhooL/FS25_EnhancedVehicle/releases/latest/download/FS25_EnhancedVehicle.zip)**

[Jump to english documentation](#english)

Dies ist eine Modifikation für den Landwirtschafts-Simulator 25. Sie fügt dem Fahrzeug einen „Spurassistenten“ („GPS“) und eine Funktion zum Einrasten in die Fahrtrichtung hinzu, sowie eine Feststellbremse, Differenzialsperren, Radantriebsmodi und verbesserte Hydrauliksteuerungen. Außerdem werden mehr Fahrzeugdetails auf dem HUD angezeigt.

**Hinweis: Die einzigen validen Downloadquellen sind meine Homepage (https://www.majo76.de) und dieses Github Repository (https://github.com/ZhooL/FS25_EnhancedVehicle). Alle anderen Downloadadressen sind nicht von mir validiert - also mit Vorsicht zu genießen.**

*(c) 2018-2024 Majo76 (vormals ZhooL). Sei so nett und erwähne mich, wenn du dieses Mod oder den Quellcode (oder Teile davon) irgendwo verwendest.*
Lizenz: https://creativecommons.org/licenses/by-nc-sa/4.0/

## Bekannte Probleme
* Möglicherweise einige... bitte via Github issues melden

## Das HUD erklärt
![HUD overview](/misc/hud_overview.png)

## Standard Tastenbelegung
| Taste | Aktion |
| --  | --     |
| <kbd>Stgt</kbd>+<kbd>Num /</kbd> | opens the config dialog to adjust various settings |
| <kbd>Num Enter</kbd> | apply/release parking brake |
| <kbd>R Stgt</kbd>+<kbd>End</kbd> | snap to current driving direction or current track |
| <kbd>R Stgt</kbd>+<kbd>Home</kbd> | reverse snap/track direction (180°) (= turn around) |
| <kbd>R Shift</kbd>+<kbd>Home</kbd> | change operational mode (snap to direction or snap to track)<br/>press & hold for one second to disable snap assistant |
| <kbd>R Stgt</kbd>+<kbd>Num 1</kbd> | re-calculate working width (e.g. spraying width changed) |
| <kbd>R Stgt</kbd>+<kbd>Num 2</kbd> | re-calculate track layout (e.g. direction changed or working width changed) |
| <kbd>R Stgt</kbd>+<kbd>Num 3</kbd> | cycle through the different show lines modes |
| <kbd>R Stgt</kbd>+<kbd>Num *</kbd> | cycle through the different headland modes |
| <kbd>R Shift</kbd>+<kbd>Num /</kbd><kbd>Num *</kbd> | cycle through headland distances |
| <kbd>R Stgt</kbd>+<kbd>Num 4</kbd> | decrease the number of turnover tracks |
| <kbd>R Stgt</kbd>+<kbd>Num 6</kbd> | increase the number of turnover tracks |
| <kbd>R Shift</kbd>+<kbd>Num 4</kbd> | move track layout to the left |
| <kbd>R Shift</kbd>+<kbd>Num 6</kbd> | move track layout to the right |
| <kbd>R Stgt</kbd>+<kbd>Shift</kbd>+<kbd>Num -</kbd> | move track offset line to the left |
| <kbd>R Stgt</kbd>+<kbd>Shift</kbd>+<kbd>Num +</kbd> | move track offset line to the right |
| <kbd>R Alt</kbd>+<kbd>Num -</kbd> | decrease track width |
| <kbd>R Alt</kbd>+<kbd>Num +</kbd> | increase track width |
| <kbd>R Stgt</kbd>+<kbd>Insert</kbd> | move vehicle one track to the right without turning around |
| <kbd>R Stgt</kbd>+<kbd>Delete</kbd> | move vehicle one track to the left without turning around |
| <kbd>R Stgt</kbd>+<kbd>PageUp</kbd> | increase snap/track direction by 1° |
| <kbd>R Stgt</kbd>+<kbd>PageDown</kbd> | decrease snap/track direction by 1° |
| <kbd>R Shift</kbd>+<kbd>PageUp</kbd> | increase snap/track direction by 90° |
| <kbd>R Shift</kbd>+<kbd>PageDown</kbd> | decrease snap/track direction by 90° |
| <kbd>R Stgt</kbd>+<kbd>Shift</kbd>+<kbd>PageUp</kbd> | increase snap/track direction by 45° |
| <kbd>R Stgt</kbd>+<kbd>Shift</kbd>+<kbd>PageDown</kbd> | decrease snap/track direction by 45° |
| <kbd>R Stgt</kbd>+<kbd>Num 7</kbd> | enable/disable front axle differential lock |
| <kbd>R Stgt</kbd>+<kbd>Num 8</kbd> | enable/disable back axle differential lock |
| <kbd>R Stgt</kbd>+<kbd>Num 9</kbd> | switch wheel drive mode between 4WD (four wheel drive) or 2WD (two wheel drive) |
| <kbd>L Alt</kbd>+<kbd>1</kbd> | rear attached devices up/down |
| <kbd>L Alt</kbd>+<kbd>2</kbd> | rear attached devices on/off |
| <kbd>L Alt</kbd>+<kbd>3</kbd> | front attached devices up/down |
| <kbd>L Alt</kbd>+<kbd>4</kbd> | front attached devices on/off |

## Was dieses Mod macht
* When the game starts, it changes all "motorized" and "controllable" vehicles on the map to default settings: wheel drive mode to "all-wheel (4WD)" and deactivation of both differentials.
* Press <kbd>Ctrl</kbd>+<kbd>Numpad /</kbd> to open the config dialog.
* Press <kbd>R Shift</kbd>+<kbd>Home</kbd> to enable the snap to direction or snap to track assistant.
  * Press & hold <kbd>R Shift</kbd>+<kbd>Home</kbd> one second or longer to disable the snap & track assistant completely.
* Press <kbd>R Ctrl</kbd>+<kbd>End</kbd> to keep your vehicle driving in the current direction or on the current track.
  * Press <kbd>R Ctrl</kbd>+<kbd>Home</kbd> to reverse snap/track direction (e.g. to turn around at end of field).
* Press <kbd>R Ctrl</kbd>+<kbd>Numpad 2</kbd> to calculate a track layout based on current vehicle direction and implement working width.
  * If you now enable snap mode the vehicle will drive on the current marked track.
  * Press <kbd>R Ctrl</kbd>+<kbd>Numpad 4/6</kbd> to adjust the turnover track number (from -5 to 5).
  * Configure headland behavior in configuration menu or via keys.
* Press <kbd>R Ctrl</kbd>+<kbd>Numpad 1</kbd> to (re-)calculate the working width. This will not change the current track layout.
* Press <kbd>Numpad Enter</kbd> to put your vehicle in parking mode. It won't move an inch in this mode.
* On HUD it displays:
  * (When snap/track is enabled) The current snap to angle and current track and turnover number.
  * Damage values in % for controlled vehicle and all its attachments.
  * Fuel fill level for Diesel/AdBlue/Electric/Methane and the current fuel usage rate<sup>1</sup>.
  * The current status of the differential locks and wheel drive mode.
  * The current engine RPM and temperature<sup>1</sup>.
  * The current mass of the vehicle and the total mass of vehicle and all its attachments and loads.
* Keybindings can be changed in the game options menu.

**<sup>1</sup> In multiplayer games, all clients, except the host, won't display the fuel usage rate and engine temperature correctly due to GIANTS Engine limitations**

## Was dieses Mod nicht (vollständig) macht
* Auf Konsolen laufen. Kauf 'nen PC für vernünftiges Zocken.

# English

This is a modification for Farming Simulator 25. It adds a "track assistant" ("GPS") and a "snap to driving direction" feature, a parking brake, differential locks, wheel drive modes and improved hydraulics controls to your vehicle. It also shows more vehicle details on the HUD.

**Note: The only valid download sources are my homepage (https://www.majo76.de) and this Github repository (https://github.com/ZhooL/FS25_EnhancedVehicle). All other download addresses are not validated by me - so please use with caution.

*(c) 2018-2024 by Majo76 (formerly ZhooL). Be so kind to credit me when using this mod or the source code (or parts of it) somewhere.*  
License: https://creativecommons.org/licenses/by-nc-sa/4.0/

## Known bugs
* Probably a lot... please report them via Github issues

## The HUD explained
![HUD overview](/misc/hud_overview.png)

## Default Keybindings
| Key | Action |
| --  | --     |
| <kbd>Ctrl</kbd>+<kbd>Num /</kbd> | opens the config dialog to adjust various settings |
| <kbd>Num Enter</kbd> | apply/release parking brake |
| <kbd>R Ctrl</kbd>+<kbd>End</kbd> | snap to current driving direction or current track |
| <kbd>R Ctrl</kbd>+<kbd>Home</kbd> | reverse snap/track direction (180°) (= turn around) |
| <kbd>R Shift</kbd>+<kbd>Home</kbd> | change operational mode (snap to direction or snap to track)<br/>press & hold for one second to disable snap assistant |
| <kbd>R Ctrl</kbd>+<kbd>Num 1</kbd> | re-calculate working width (e.g. spraying width changed) |
| <kbd>R Ctrl</kbd>+<kbd>Num 2</kbd> | re-calculate track layout (e.g. direction changed or working width changed) |
| <kbd>R Ctrl</kbd>+<kbd>Num 3</kbd> | cycle through the different show lines modes |
| <kbd>R Ctrl</kbd>+<kbd>Num *</kbd> | cycle through the different headland modes |
| <kbd>R Shift</kbd>+<kbd>Num /</kbd><kbd>Num *</kbd> | cycle through headland distances |
| <kbd>R Ctrl</kbd>+<kbd>Num 4</kbd> | decrease the number of turnover tracks |
| <kbd>R Ctrl</kbd>+<kbd>Num 6</kbd> | increase the number of turnover tracks |
| <kbd>R Shift</kbd>+<kbd>Num 4</kbd> | move track layout to the left |
| <kbd>R Shift</kbd>+<kbd>Num 6</kbd> | move track layout to the right |
| <kbd>R Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>Num -</kbd> | move track offset line to the left |
| <kbd>R Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>Num +</kbd> | move track offset line to the right |
| <kbd>R Alt</kbd>+<kbd>Num -</kbd> | decrease track width |
| <kbd>R Alt</kbd>+<kbd>Num +</kbd> | increase track width |
| <kbd>R Ctrl</kbd>+<kbd>Insert</kbd> | move vehicle one track to the right without turning around |
| <kbd>R Ctrl</kbd>+<kbd>Delete</kbd> | move vehicle one track to the left without turning around |
| <kbd>R Ctrl</kbd>+<kbd>PageUp</kbd> | increase snap/track direction by 1° |
| <kbd>R Ctrl</kbd>+<kbd>PageDown</kbd> | decrease snap/track direction by 1° |
| <kbd>R Shift</kbd>+<kbd>PageUp</kbd> | increase snap/track direction by 90° |
| <kbd>R Shift</kbd>+<kbd>PageDown</kbd> | decrease snap/track direction by 90° |
| <kbd>R Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>PageUp</kbd> | increase snap/track direction by 45° |
| <kbd>R Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>PageDown</kbd> | decrease snap/track direction by 45° |
| <kbd>R Ctrl</kbd>+<kbd>Num 7</kbd> | enable/disable front axle differential lock |
| <kbd>R Ctrl</kbd>+<kbd>Num 8</kbd> | enable/disable back axle differential lock |
| <kbd>R Ctrl</kbd>+<kbd>Num 9</kbd> | switch wheel drive mode between 4WD (four wheel drive) or 2WD (two wheel drive) |
| <kbd>L Alt</kbd>+<kbd>1</kbd> | rear attached devices up/down |
| <kbd>L Alt</kbd>+<kbd>2</kbd> | rear attached devices on/off |
| <kbd>L Alt</kbd>+<kbd>3</kbd> | front attached devices up/down |
| <kbd>L Alt</kbd>+<kbd>4</kbd> | front attached devices on/off |

## What this mod does
* When the game starts, it changes all "motorized" and "controllable" vehicles on the map to default settings: wheel drive mode to "all-wheel (4WD)" and deactivation of both differentials.
* Press <kbd>Ctrl</kbd>+<kbd>Numpad /</kbd> to open the config dialog.
* Press <kbd>R Shift</kbd>+<kbd>Home</kbd> to enable the snap to direction or snap to track assistant.
  * Press & hold <kbd>R Shift</kbd>+<kbd>Home</kbd> one second or longer to disable the snap & track assistant completely.
* Press <kbd>R Ctrl</kbd>+<kbd>End</kbd> to keep your vehicle driving in the current direction or on the current track.
  * Press <kbd>R Ctrl</kbd>+<kbd>Home</kbd> to reverse snap/track direction (e.g. to turn around at end of field).
* Press <kbd>R Ctrl</kbd>+<kbd>Numpad 2</kbd> to calculate a track layout based on current vehicle direction and implement working width.
  * If you now enable snap mode the vehicle will drive on the current marked track.
  * Press <kbd>R Ctrl</kbd>+<kbd>Numpad 4/6</kbd> to adjust the turnover track number (from -5 to 5).
  * Configure headland behavior in configuration menu or via keys.
* Press <kbd>R Ctrl</kbd>+<kbd>Numpad 1</kbd> to (re-)calculate the working width. This will not change the current track layout.
* Press <kbd>Numpad Enter</kbd> to put your vehicle in parking mode. It won't move an inch in this mode.
* On HUD it displays:
  * (When snap/track is enabled) The current snap to angle and current track and turnover number.
  * Damage values in % for controlled vehicle and all its attachments.
  * Fuel fill level for Diesel/AdBlue/Electric/Methane and the current fuel usage rate<sup>1</sup>.
  * The current status of the differential locks and wheel drive mode.
  * The current engine RPM and temperature<sup>1</sup>.
  * The current mass of the vehicle and the total mass of vehicle and all its attachments and loads.
* Keybindings can be changed in the game options menu.

**<sup>1</sup> In multiplayer games, all clients, except the host, won't display the fuel usage rate and engine temperature correctly due to GIANTS Engine limitations**

## What this mod doesn't (fully) do
* Work on consoles. Buy a PC for proper gaming.

# Und sonst so / The rest
* Twitch: https://www.twitch.tv/Majo76_
* Instagram: https://www.instagram.com/Majo76__/
* Discord: https://d.majo76.de
* Twitter: https://www.twitter.com/Majo76_
* HomePage: https://www.majo76.de
* GitHub: https://github.com/ZhooL/FS25_EnhancedVehicle
