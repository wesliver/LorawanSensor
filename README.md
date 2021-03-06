# STM32 Low Power LoraWan Sensors

This project provides a framework to easily build LoraWan devices. The requirements are:
- sensors that could run without replacing batteries during the life cycle of the device
- small size
- easy to build and program (need a 20-30)
- simple to create a new type: just a new file
- cost bellow 20€
- resist the outside weather with easy to 3D print cages

The sensor can work on a CR123 battery for 20 years (self-discharge of the battery being the main factor). It sends the battery voltage and (optionally) the temp of the MCU (using factory calibration).

For each new detected device it generates unique LoraWan keys and upload them to flash. This way the same firmware can be used for multiple instances of the same board.

Download commands might be used to query or modify the configuration. See the commands section bellow.

## Bill of Materials
Devices can be built for ca 10-20€ ussing the following parts:
- STM32 MCU - any of the following:
  - STM32L412KB (3 €) - prefered: 128KB RAM for a future firmware OTA update
    - STM32L412KBT6 128K Flash,  8K RAM, LQFP-32
  - STM32L412K8 (2.5 €) - same as STM32L412KB but only 64K Flash
    - STM32L412K8T6 64K Flash,  8K RAM, LQFP-32
  - STM32L010K8 (1.5 €) - cheaper MCO+, slower, less memory, not tem and slightly higher consumption
    - STM32L412K8T6 64K Flash,  8K RAM, LQFP-32 
- RFM95W (3.5 € via Aliexpress, 3x this price if bought in Europe)
- RC123a battery and holder (2€ via Aliexpress, 2x this price if bought in Europe)
- PCB (2-5 € when ordering 12 from [Aisler](https://aisler.net) ) - see [Devices](devices) folder for the sources and the uploaded PCBs to [Aisler](https://aisler.net)
- 3D-printed boxes - see cages in [Devices](devices) folder
- some SMT components (1 €) - see schematics in [Devices](devices) folder

## Downlink commands

Downlink commands are used to query and/or modify the device settings without having to reprogram the flash. Each command uses one byte plus optional data depending on the command. The commands are implemtented in the `lorawan_process_command` at [lorawan.cpp](src/lorawan.cpp#L188)

Commands will be queued and transferred to the device after the next uplink transfer. Multiple commands can be queued but be carefull not to exceed to the watdown timeout or the device will get reset.

Commands:
- 0x00 - READ configuration
  - Description: Returns the configuration of the device. See [device_config_t](src/config.h#L23) for more details on the struct
  - Additional downlink bytes: none
  - Example output: 02 03 3C00 05 3C 6400 5802 01 0A 05 FF
- 0x01 - Reset config to the default
  - Additional downlink bytes: none
- 0x02 - Sets the configuration
  - Additional downlink bytes: config as returned by the 0x00 command
  - Example input: 02 02033C00053C64005802010A05FF
- 0x05 - Read Device UID
  - Additional downlink bytes: none
  - Output: 12 bytes with STM32 UID
- 0x06 - Read firmware GIT commit
  - Additional downlink bytes: none
  - Output: ASCII string
- 0x07 - Read firmware BUILD date
  - Additional downlink bytes: none
  - Output: ASCII string

## Firmware

This project requires [Platformio](https://platformio.org/) and the [STM32 Cube Programmer](https://www.st.com/en/development-tools/stm32cubeprog.html). Both need to be installed and available in the PATH.

Keys for each detected device will be stored under `config/devices.ini`. Before you run for the first time please create the file and include your app EUI (or modify afterwards). You can create this by registering a new app at the [TTN](https://console.thethingsnetwork.org/applications) console. The file should have:
```
[global]
appeui = <your app EUI>
```
If you run without creating the file first then the programmer will create a dummy APPEUI which you will need to modify. You can keep the config folder into its own git repository. Please keep it private!

For programming either use the platformio UI or any of the CLI commands proposed for te device.

If you connect a serial interface while booting you should should see the following:
```
Settings unchanged
DEVICE VERSION: 3
DEVICE CONFIG: 0x02033C00053C64005802010A05FF
Device UID: 0x3200230006504D3843353720
BUILD DATE: Jun 21 2020
BUILD TIME: 18:07:48
COMMIT ID: e3d1d3b5d34d39d88d90022d6fe365ebce3887b5
APPEUI: 0x.....
DEVEUI: 0x....
Starting
7579 Sending.. 18248 TX_COMPLETE
```

## Adding new devices

1. Add a section to `platformio.ini` for your device. The key part is to have a dedicate `-D SENSOR_<PCB name>_<sensor name>_<MCU name>` (such as `-D SENSOR_GENERIC_DISTANCE_SMT32`) -> this will be needed in the next step.
  - If you are just using the generic PCB then you can copy `Basic v1` and modify to your needs
  - If you are creating your own PCB based on the STM32 MCU then you can copy `Generic v1` and modify to your needs
  - If you use a different MCU then you will need to create your own target extending `base` and `base_debug`. Please notice that you will in this case have to add support for the new MCU in multiple areas of the code where the MCU is relevant: the code has been tested with STM32 (mainly) and atmega32.
2. Add a new cpp file to `src/devices/` for your new device. The namming convention is <PCB type>_<device name>_<MCU family>.cpp. If you are using a STM32 CPU you should consider copying `generic_basic_stm32.cpp` which does not depend on any external sensors to work and then add your own sensors to it. You need to make this file to only get included and compiled when `SENSOR_<PCB name>_<sensor name>_<MCU name>` is defined.
3. Add to `devices.h` a section for your device where you set your `device_config_device_t`. This struct includes what persistent settings your device needs. These settings can later be modified via a LORAWAN command.
4. Documment your device in the `devices` folder. This folder structure is:
   - _<PCB name>_
     - _cages_: instructions and files to 3D print cages for devices
     - _KiCad_: Schematics and PCBs created with KiCad
     - _pictures_: pcitures embedded in markdown readme
     - _README_: instructions, pictures and links for devices. It is structured with a chapter for each device sharing the same PCB and a subcharter for each mayor version of the device. 

## ToDos
- Firmware OTA update

