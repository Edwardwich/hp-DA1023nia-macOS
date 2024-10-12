

# HP DA1023nia macOS

![4668d2cd-d74a-4eda-8baa-a06a83545b7e](https://user-images.githubusercontent.com/35195176/183241772-957f7ded-736a-46aa-abb8-ee49c55d2ca5.jpeg)

## Configuration

| Specifications      | Detail                                 |
| ------------------- | ---------------------------------------|
| CPU                 | Intel(R) Core(TM) i5-8265U             |
| Integrated Graphics | Intel UHD Graphics 620                 |
| RAM 		              | 8 GB 2400 MHz DDR4.                    |
| LAN 		              | RTL8111                        	       |
| Sound Card          | Realtek ALC236 (layout-id: `55`)       |
| SmBios              | MacBookPro15,4(NO NO SMBIOS)           |
| Wifi + Bluetooth    | Dell Wireless 1820A Bluetooth 4.1 LE   |
| NVME                | Samsung SSD 980 250GB(macOS)           |
| SATA                | SanDisk SD9SN8W-128G-1006(Windows)     |




## MacOS Versions Supported:
- macOS Sequoia 15.1 (Wifi with OCLP)
- macOS Sequoia 15.0.1 (Wifi with OCLP)
- macOS Sonoma 14.5 (Wifi with OCLP)
- macOS Ventura 13.6.6

## Config & SSDT & Kexts :

Bios settings for Bios Version `F.42`  

| Variable name          | VarStore| Offset | Default value  | Required value  | Description                                                            |
|------------------------|---------|--------|----------------|-----------------|------------------------------------------------------------------------|
| CFG Lock               |CpuSetup | 0x3E   | 0x01 (Enabled) | 0x00 (Disabled) | Disables CFG Lock, otherwise you won't be able to boot                 |
| DVMT Pre-Allocated     |SaSetup  | 0x107  | 0x01 (32M)     | 0x02 (64M)      | Increases DVMT pre-allocated size to 64M which is required             |
| DVMT Total Gfx Mem     |SaSetup  | 0x108  | 0x01 (128M)    | 0x03 (MAX)      | Increases total gfx memory limit to maximum                            |
| SATA Mode Selection    |PchSetup | 0x44   | 0x01 (Raid)    | 0x00 (AHCI)     | MacOS Dobst supprot Riad and disable this improve sata HHD or SSD speed|
| Bi-directional PROCHOT |CpuSetup | 0x75   | 0x01 (Enabled) | 0x00 (Disabled) | Disables PROCHOT, which limits your CPU to 0.79GHz. More info below    |


 
 APCI 

- `SSDT-HP_da1023nia`

<details>  
<summary> FAN：</summary> 

### HP DA1023nia (`generic`)

- `ec-device` = `generic`
- `fan0-addr` = `0x11`
- `fan0-mul` = `0x5D`
</details> 
<details> 
<summary> Kexts：</summary>
 
- `Lilu.kext`
- `VirtualSMC.kext`(`SMCProcessor.kext` and `SMCSuperIO.kext`)
- `WhateverGreen.kext`
- `AppleALC.kext`
- `CPUFriend.kext`
- `CPUFriendDataProvider.kext`
- `RestrictEvents.kext`
- `FeatureUnlock.kext`
- `VoodooPS2Controller.kext`
- `BrightnessKeys.kext`
- `VoodooRMI.kext`
- `VoodooSMBus.kext`
- `ACPIBatteryManager.kext`
- `IOSkywalkFamily.kext`(`For wifi patch OCLP)
- `IO80211FamilyLegacy.kext`(`For wifi patch OCLP)
- `IO80211FamilyLegacy.kext/Contents/PlugIns/AirPortBrcmNIC.kext`(`For wifi patch OCLP)
- `BlueToolFixup.kext`
- `BrcmFirmwareData.kext`
- `BrcmPatchRAM3.kext`
- `XHCI-unsupported.kext`
- `HoRNDIS.kext`
- `RealtekRTL8111.kext`
- `HibernationFixup.kext`
- `USBToolBox.kext`and`UTBMap.kext`(`USBPorts.kext`usb mapping)
- `AMFIPass.kext`(`For wifi patch OCLP)
</details> 

## What is Working?

- [x] Native CPU Power Management
- [x] Sleep/Wake
- [x] Intel Graphics
- [x] Audio
- [x] Trackpad (gestures)
- [x] HDMI: video and audio
- [x] USB 3.1
- [x] Battery Management 
- [x] Brightness
- [x] Built-in camera
- [x] Built-in mic
- [x] Line-in mic
- [x] Bluetooth
- [x] wireless

 

## Screen Shot
![Screenshot 2024-07-06 at 19 10 37](https://github.com/Edwardwich/hp-DA1023nia-macOS/assets/35195176/0734bf77-0e8d-4639-98b4-e50382d3010e)

![Screen Shot 2022-02-19 at 17 53 11](https://user-images.githubusercontent.com/35195176/154846950-0b1d1040-4f00-4fba-9995-d1a110a42d50.png)

![Screen Shot 2022-02-13 at 02 27 53](https://user-images.githubusercontent.com/35195176/153767408-b089c545-bcaa-4e02-b680-5eece949a795.png)

![Screen Shot 2022-02-13 at 02 29 42](https://user-images.githubusercontent.com/35195176/153767429-e6d24500-6208-49fb-86d8-b13702954898.png)

![Screenshot 2022-07-11 at 4 12 45 PM](https://user-images.githubusercontent.com/35195176/178256764-51ce4184-5edd-4552-9f2d-05ac6264dcd4.png)

![Screenshot 2022-07-11 at 4 25 38 PM](https://user-images.githubusercontent.com/35195176/178258859-f7a0ab42-d6b9-40a5-88b4-8989925c1423.png)

![Screenshot 2024-06-16 at 23 41 38](https://github.com/Edwardwich/hp-DA1023nia-macOS/assets/35195176/b91125c1-9cb4-447a-b568-5836130769da)

![Screenshot 2022-07-16 at 9 27 24 PM](https://user-images.githubusercontent.com/35195176/179365142-5af6add1-ac41-4eb6-8204-f090a0df655e.png)



## Thanks：


- [@hackintoshlife](https://github.com/Hackintoshlifeit) best gp for hackintosh


- [@acidanthera](https://github.com/acidanthera/OpenCorePkg) for OpenCorePkg 


- [@apple](https://www.apple.com/) created macos 


- [@Baio1977](https://github.com/Baio1977) He made efi folder and ssdt


- [@Lorys89](https://github.com/Lorys89) for fix bios problem

 
- [@zxystd](https://github.com/OpenIntelWireless/itlwm) created kexts of wifi and bluetooth  
