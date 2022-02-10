

# HP DA1023nia Hackintosh


## Configuration

| Specifications      | Detail                       |
| ------------------- | ---------------------------- |
| CPU                 | Intel(R) Core(TM) i5-8265U   |
| Integrated Graphics | Intel UHD Graphics 620       |
| Sound Card          | Realtek ALC236 (layout-id: `3` or `14`) |
| Wireless Card       | RTL8821CE Replaced with(`Intel Wireless N-7265`)      |




## MacOS Versions Supported:

- macOS Monterey 12.1 (21C52)


## Config & SSDT & Kexts :

<details>  
<summary> APCI：</summary> 

- `SSDT-HP_da1023nia`
 
</details> 

<details>  
<summary> Kexts：</summary>
 
- `Lilu.kext`
- `VirtualSMC.kext`
- `WhateverGreen.kext`
- `AppleALC.kext`
- `CPUFriend.kext`
- `CPUFriendDataProvider.kext`
- `CPUFriend.kext`(and`CPUFriendDataProvider.kext`for improve battery)
- `CtlnaAHCIPort.kext`
- `HibernationFixup.kext`
- `RestrictEvents.kext`
- `VoodooPS2Controller.kext`
- `BrightnessKeys.kext`
- `VoodooRMI.kext`
- `VoodooSMBus.kext`
- `AirportItlwm.kext`
- `BlueToolFixup.kext`
- `IntelBluetoothFirmware.kext` 
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

![Screen Shot 1400-09-20 at 5 36 01 PM](https://user-images.githubusercontent.com/35195176/145679482-fb70afcd-7255-4181-a210-7935f42a9067.png)

![Screen Shot 1400-09-20 at 5 36 34 PM](https://user-images.githubusercontent.com/35195176/145679493-80205a7c-2d8f-4cd5-add2-5c923480b5bd.png)






## Thanks：


- [@hackintoshlife](https://github.com/Hackintoshlifeit) best gp for hackintosh


- [@acidanthera](https://github.com/acidanthera/OpenCorePkg) for OpenCorePkg 


- [@apple](https://www.apple.com/) created macos 


- [@Baio1977](https://github.com/Baio1977) He made efi folder and ssdt


- [@Lorys89](https://github.com/Lorys89) fix SSDT-PNLF for whiskey lake 8265u and ssdt

 
- [@zxystd](https://github.com/OpenIntelWireless/itlwm) created kexts of wifi and bluetooth  

