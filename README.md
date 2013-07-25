# LabVIEW Interface for libFpgaLink
A collection of VIs for interacting with the libFpgaLink written by @makestuff. Find more information about libFpgaLink at https://github.com/makestuff/libfpgalink

Included are VIs that use the LV "Call Library Function Node" that wrap around the libFpgaLink dll. These VIs are also exposed in the LV function palette. Also included is an example VI that allows you play xsvf files, read/write to channels and scan the JTAG chain (functions similar to flcli.exe)

**The VIs assume that libfpgalink is within your PATH environmental variable.**

These VIs were created and saved in LabVIEW 2011 SP1. Tested with a Digilent Nexys3 board. They should be compatible with LabVIEW 2011 (or higher) and other libFpgaLink compatible boards.

References
"Zaks" implementation posted at https://groups.google.com/forum/#!topic/fpgalink-users/aMzdhjzhovs


## Functions Implemented
+ flClose
+ flInitialise
+ flIsCommCapable
+ flIsFPGARunning
+ flIsNeroCapable
+ flLoadStandardFirmware
+ flOpen
+ flPlayXSVF
+ flReadChannel
+ flScanChain
+ flWriteChannel


## Functions not yet implemented
+ flAppendWriteChannelCommand
+ flCleanWriteBuffer
+ flFlashCustomFirmware
+ flFlashStandardFirmware
+ flFreeError
+ flFreeFile
+ flLoadCustomFirmware
+ flLoadFile
+ flPlayWriteBuffer
+ flPortAccess
+ flSaveFirmware
+ flSleep
+ flIsDeviceAvailable (Used in flLoadStandardFirmware Vi)

