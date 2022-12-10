

# HP DA1023nia macOS

![4668d2cd-d74a-4eda-8baa-a06a83545b7e](https://user-images.githubusercontent.com/35195176/183241772-957f7ded-736a-46aa-abb8-ee49c55d2ca5.jpeg)

## Configuration

| Specifications      | Detail                       |
| ------------------- | ---------------------------- |
| CPU                 | Intel(R) Core(TM) i5-8265U   |
| Integrated Graphics | Intel UHD Graphics 620       |
| RAM 		      | 8 GB 2400 MHz DDR4.          |
| LAN 		      | RTL8111                      |
| Sound Card          | Realtek ALC236 (layout-id: `3` or `14`)           |
| SmBios              | MacBookPro15,4(NO Serial Number)                  |
| Wifi + Bluetooth    | Intel Wireless N-7265.       |
| NVME                | Samsung SSD 980 250GB(macOS)                      |
| SATA                | SanDisk SD9SN8W-128G-1006 Media(Windows)          |






## MacOS Versions Supported:

- macOS Ventura 13.1 (22C65)

## Config & SSDT & Kexts :

<details>  
<summary> Bios settings for Bios Version `F.42` ：</summary> 

- `Intel SGX`
0x3E 0x0. CpuSetup:
	
![Screen Shot 2022-08-06 at 12 59 42](https://user-images.githubusercontent.com/35195176/183241620-8b117c92-289f-40c3-8eab-2c0dc1926ff8.png)
![CpuSetup](https://user-images.githubusercontent.com/35195176/183240746-884dad66-5633-42be-aeaa-f1b9c74e318f.png)



- `cfg lock and DVMT: DO AT YOUR OWN RISK!!! It may brick your laptop`
0x107 0x2 SaSetup and 0x108 0x3 SaSetup:
	
	
![Screen Shot 2022-08-06 at 13 02 05](https://user-images.githubusercontent.com/35195176/183241628-14f81e09-5367-44d9-a26e-be858fa76727.png)
![Screen Shot 2022-08-06 at 13 02 18](https://user-images.githubusercontent.com/35195176/183241638-b2d7b5f8-6d1b-41ab-bf14-318fda43882a.png)
![DVMT](https://user-images.githubusercontent.com/35195176/183240759-6506689a-c7f4-470d-9895-5d8876afbfe1.png)


- `Raid to AHCI` PchSetup  0x44 to 0x00:
	
![Screen Shot 2022-08-06 at 13 05 55](https://user-images.githubusercontent.com/35195176/183241664-82a479b9-496a-49a9-a772-d0fa8e0bd6c4.png)
![PchSetup](https://user-images.githubusercontent.com/35195176/183240796-21ccfdfe-f318-435c-8a1b-3fae4363fdf5.png)

 
</details> 


<details>  
<summary> APCI：</summary> 

- `SSDT-HP_da1023nia`
 
</details> 

<details>  
<summary> FAN：</summary> 

### HP DA1023nia (`generic`)

- `ec-device` = `generic`
- `fan-count` = `1`
- `fan0-addr` = `0x11`
- `fan0-size` = `0x00`
- `fan0-div` = `0x02`
- `fan0-mul` = `0xC8`
- `fan0-big` = `0x01` 
 <summary>Spoiler: EC RAM details</summary>
	
	 ```ASL
	OperationRegion (ECMM, SystemMemory, 0xFC7E0800, 0x1000)
            Field (ECMM, AnyAcc, Lock, Preserve)
            {
                REC1,   8, 
                REC2,   8, 
                WEC1,   8, 
                WEC2,   8, 
                WMIM,   8, 
                Offset (0x06), 
                STMS,   2, 
                MBMS,   2, 
                ACLS,   1, 
                MBSS,   1, 
                CSHE,   1, 
                ACSP,   1, 
                PSAC,   1, 
                PSBC,   1, 
                PSED,   1, 
                Offset (0x08), 
                PSPD,   8, 
                BCPD,   8, 
                BSTH,   8, 
                PRDT,   8, 
                UCPT,   8, 
                HHKP,   8, 
                SADP,   8, 
                FANE,   1, 
                CPUO,   1, 
                M4GO,   1, 
                FNSW,   1, 
                SBTC,   1, 
                AMDK,   1, 
                    ,   1, 
                EHP1,   1, 
                SAD2,   8, 
                FRPM,   8, /* 0x11, FAN0 RPM Address */
                
            }
 </details>
</details>  
<details> 
<summary> Kexts：</summary>
 
- `Lilu.kext`
- `VirtualSMC.kext`
- `WhateverGreen.kext`
- `AppleALC.kext`
- `CPUFriend.kext`
- `CPUFriendDataProvider.kext`
- `NVMeFix.kext`
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
![Screenshot 2022-06-24 at 12 52 25](https://user-images.githubusercontent.com/35195176/175495153-bfc369cb-582a-4791-aabd-6c8111af25e9.png)

![Screen Shot 2022-02-19 at 17 53 11](https://user-images.githubusercontent.com/35195176/154846950-0b1d1040-4f00-4fba-9995-d1a110a42d50.png)

![Screen Shot 2022-02-13 at 02 27 53](https://user-images.githubusercontent.com/35195176/153767408-b089c545-bcaa-4e02-b680-5eece949a795.png)

![Screen Shot 2022-02-13 at 02 29 42](https://user-images.githubusercontent.com/35195176/153767429-e6d24500-6208-49fb-86d8-b13702954898.png)

![Screenshot 2022-07-11 at 4 12 45 PM](https://user-images.githubusercontent.com/35195176/178256764-51ce4184-5edd-4552-9f2d-05ac6264dcd4.png)

![Screenshot 2022-07-11 at 4 25 38 PM](https://user-images.githubusercontent.com/35195176/178258859-f7a0ab42-d6b9-40a5-88b4-8989925c1423.png)

![Screenshot 2022-07-16 at 9 27 24 PM](https://user-images.githubusercontent.com/35195176/179365142-5af6add1-ac41-4eb6-8204-f090a0df655e.png)



## Thanks：


- [@hackintoshlife](https://github.com/Hackintoshlifeit) best gp for hackintosh


- [@acidanthera](https://github.com/acidanthera/OpenCorePkg) for OpenCorePkg 


- [@apple](https://www.apple.com/) created macos 


- [@Baio1977](https://github.com/Baio1977) He made efi folder and ssdt


- [@Lorys89](https://github.com/Lorys89) for fix bios problem

 
- [@zxystd](https://github.com/OpenIntelWireless/itlwm) created kexts of wifi and bluetooth  
