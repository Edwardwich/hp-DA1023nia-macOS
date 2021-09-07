

# HP DA1023nia Hackintosh
Dont forget add Serial Number to smbios

## Configuration

| Specifications      | Detail                       |
| ------------------- | ---------------------------- |
| CPU                 | Intel(R) Core(TM) i5-8265U   |
| Integrated Graphics | Intel UHD Graphics 620       |
| Sound Card          | Realtek ALC236 (layout-id:14) |
| Wireless Card       | RTL8821CE Replaced with(Intel Wireless N-7265)      |




## MacOS Versions Supported:

- macOS Big Sur 11.5.2
- macOS Monterey Beta

## MacOS Versions Supported:

## SSDT & Kexts :
<details>  
<summary> Config：</summary> 
- add Serial Number to smbios:
- `PlatformInfo`>`Generic`>`SystemSerialNumber`
- for help see [opencore smbios guide](https://dortania.github.io/OpenCore-Install-Guide/extras/smbios-support.html#how-to-decide)
- `SSDT-ACAD`
- `SSDT-ALS0`
- `SSDT-AWAC`
 
 

</details> 


<details>  
<summary> SSDT：</summary> 

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
- `SSDT-UIAC`
- `SSDT-XOSI`
- `SSDT-XSPI`

</details> 

<details>  
<summary> Kexts：</summary>
 
- `Lilu.kext`
- `VirtualSMC.kext`(SMCLightSensor,SMCProcessor,SMCBatteryManager`disable`)
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
- `ACPIBatteryManager.kext`
- `AirportItlwm.kext`
- `BlueToolFixup.kext`(if you isntall mac os Monterey use this kext and delete `BluetoothInjector.kext`)
- `IntelBluetoothFirmware.kext`
- `IntelBluetoothInjector.kext`
- `HoRNDIS.kext`
- `RealtekRTL8111.kext`
- `USBInjectAll.kext`
- `XHCI-unsupported.kext`
 
 
</details> 

## What is Working?

- [x] Native CPU Power Management
- [x] Sleep/Wake
- [x] Intel Graphics
- [x] Audio
- [x] Trackpad (gestures)
- [x] HDMI: video and audio
- [x] USB 3.0
- [x] Battery Management (ACPIBatteryManager.kext)
- [x] Brightness
- [x] Built-in camera
- [x] Built-in mic
- [x] Line-in mic
- [x] Bluetooth Intel
- [x] Intel wireless

 

## Screen Shot

![Screen Shot 2021-09-06 at 10 22 05 PM](https://user-images.githubusercontent.com/35195176/132250512-8e84bca4-2d9a-46fb-88cf-8b71ed997aa9.png)
![Screen Shot 2021-08-31 at 10 48 22 AM](https://user-images.githubusercontent.com/35195176/131452081-4812a928-e014-4eb5-8e25-7303ae848981.png)
![Screen Shot 2021-09-05 at 2 56 02 AM](https://user-images.githubusercontent.com/35195176/132109390-28545837-e1a9-47a7-987e-e11cbbb93377.png)
![Screen Shot 2021-09-05 at 2 56 59 AM](https://user-images.githubusercontent.com/35195176/132109491-1eff054c-4e58-43d0-a06e-a1b4a9cc8ae8.png)
![Screen Shot 2021-09-05 at 3 03 29 AM](https://user-images.githubusercontent.com/35195176/132109500-09d634a6-76e6-4322-a2a4-bec2ef76ad9c.png)



## Thanks：


- [@hackintoshlife](https://github.com/Hackintoshlifeit) best gp for hackintosh


- [@acidanthera](https://github.com/acidanthera/OpenCorePkg) for OpenCorePkg 


- [@apple](https://www.apple.com/) created macos 


- [@Baio1977](https://github.com/Baio1977) He made efi folder and ssdt


- [@Lorys89](https://github.com/Lorys89) fix SSDT-PNLF for whiskey lake 8265u and ssdt

 
- [@zxystd](https://github.com/OpenIntelWireless/itlwm) created kexts of wifi and bluetooth  

