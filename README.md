

# HP DA1023nia Hackintosh


## Configuration

| Specifications      | Detail                       |
| ------------------- | ---------------------------- |
| CPU                 | Intel(R) Core(TM) i5-8265U   |
| Integrated Graphics | Intel UHD Graphics 620       |
| Sound Card          | Realtek ALC236 (layout-id:14) |
| Wireless Card       | RTL8821CE Replaced with(Intel Wireless N-7265)      |




## MacOS Versions Supported:

- macOS Monterey 12.0.1 (21A559)


## Config & SSDT & Kexts :

<details>  
<summary> APCI：</summary> 

- `SSDT-ACAD`
- `SSDT-ALS0`
- `SSDT-AWAC`
- `SSDT-EC-USBX`
- `SSDT-GAUS`
- `SSDT-GPRW`
- `SSDT-MCHC`
- `SSDT-PLUG`
- `SSDT-PMCR`
- `SSDT-PNLF`
- `SSDT-SLPB`
- `SSDT-SRAM`
- `SSDT-TERM`
- `SSDT-XOSI`
- `SSDT-XSPI`

</details> 

<details>  
<summary> Kexts：</summary>
 
- `Lilu.kext`
- `VirtualSMC.kext`(`ACPIBatteryManager.kext`use for battery)
- `ACPIBatteryManager.kext`(Change build SDK)
- `WhateverGreen.kext`
- `AppleALC.kext`
- `ECEnabler.kext`
- `CtlnaAHCIPort.kext`
- `HibernationFixup.kext`
- `RestrictEvents.kext`
- `VoodooPS2Controller.kext`
- `BrightnessKeys.kext`
- `VoodooRMI.kext`
- `VoodooSMBus.kext`
- `AirportItlwm.kext`
- `BlueToolFixup.kext`(if you isntall mac os Monterey use this kext and delete `BluetoothInjector.kext`)
- `IntelBluetoothFirmware.kext`
- `IntelBluetoothInjector.kext`
- `HoRNDIS.kext`
- `RealtekRTL8111.kext`
- `USBInjectAll.kext`(`USBPorts.kext`usb mapping) 
 
</details> 

## What is Working?

- [x] Native CPU Power Management
- [x] Sleep/Wake
- [x] Intel Graphics
- [x] Audio
- [x] Trackpad (gestures)
- [x] HDMI: video and audio
- [x] USB 3.0
- [x] Battery Management 
- [x] Brightness
- [x] Built-in camera
- [x] Built-in mic
- [x] Line-in mic
- [x] Bluetooth Intel
- [x] Intel wireless

 

## Screen Shot


![Screen Shot 1400-07-26 at 11 43 04 PM](https://user-images.githubusercontent.com/35195176/137881878-c3642bed-6b50-4f89-bdc7-ae033bf90e7b.png)

![Screen Shot 1400-07-30 at 7 39 27 PM](https://user-images.githubusercontent.com/35195176/138489029-87ecd7e3-fbdc-4b88-9125-4702fc2470d9.png)





## Thanks：


- [@hackintoshlife](https://github.com/Hackintoshlifeit) best gp for hackintosh


- [@acidanthera](https://github.com/acidanthera/OpenCorePkg) for OpenCorePkg 


- [@apple](https://www.apple.com/) created macos 


- [@Baio1977](https://github.com/Baio1977) He made efi folder and ssdt


- [@Lorys89](https://github.com/Lorys89) fix SSDT-PNLF for whiskey lake 8265u and ssdt

 
- [@zxystd](https://github.com/OpenIntelWireless/itlwm) created kexts of wifi and bluetooth  

