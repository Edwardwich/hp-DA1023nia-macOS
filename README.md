

# HP DA1023nia Hackintosh


## Configuration

| Specifications      | Detail                       |
| ------------------- | ---------------------------- |
| CPU                 | Intel(R) Core(TM) i5-8265U   |
| Integrated Graphics | Intel UHD Graphics 620       |
| Sound Card          | Realtek ALC236 (layout-id: `3` or `14`) |
| Wireless Card       | RTL8821CE Replaced with(`Intel Wireless N-7265`)      |
| ssd       | Samsung SSD 980 250GB      |





## MacOS Versions Supported:

- macOS Ventura Beta 2 (22A5286j)
- macOS Monterey 12.3 (21E258)

## Config & SSDT & Kexts :

<details>  
<summary> Bios settings for Bios Version F.38：</summary> 

- `Intel SGX`
- `cfg lock and DVMT: DO AT YOUR OWN RISK!!! It may brick your laptop`
- `Raid to AHCI`
 
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
- `fan0-size` = `0x01`
- `fan0-div` = `0x03`
- `fan0-mul` = `0x96`
- `fan0-big` = `0x00` 
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
                FNMX,   8, 
                FNMN,   8, 
                FWPM,   8, 
                RSTV,   8, 
                CPTV,   8, 
                GPTV,   8, 
                PHTV,   8, 
                FNTV,   8, 
                BTTV,   8, 
                HDTV,   8, 
                    ,   1, 
                    ,   1, 
                W2BS,   1, 
                SK6U,   1, 
                BARD,   1, 
                    ,   1, 
                FNHK,   1, 
                Offset (0x1D), 
                FBST,   1, 
                NGPS,   1, 
                BCDG,   1, 
                DGPS,   1, 
                DGRS,   1, 
                Offset (0x1E), 
                DGPE,   1, 
                DGHR,   1, 
                FBPC,   1, 
                EC6I,   1, 
                EC6O,   1, 
                GC6E,   1, 
                RG12,   1, 
                Offset (0x21), 
                BTNO,   8, 
                Offset (0x23), 
                NVDX,   8, 
                Offset (0x25), 
                CFBE,   1, 
                EPCF,   1, 
                Offset (0x26), 
                DPTC,   8, 
                Offset (0x2A), 
                PBSM,   2, 
                SBSM,   2, 
                    ,   2, 
                BMNC,   1, 
                BCLC,   1, 
                Offset (0x2C), 
                IOAF,   8, 
                BCTL,   128, 
                Offset (0x45), 
                ATTE,   16, 
                RTTE,   16, 
                BC00,   8, 
                BC01,   8, 
                BC02,   8, 
                BC03,   8, 
                BC04,   8, 
                BC05,   8, 
                BC06,   8, 
                BC07,   8, 
                MXER,   8, 
                ATTF,   16, 
                SBVR,   16, 
                NBM1,   1, 
                BBM1,   1, 
                PBM1,   1, 
                Offset (0x58), 
                IOST,   16, 
                BMNE,   16, 
                WACL,   1, 
                Offset (0x5D), 
                ERIB,   16, 
                Offset (0x61), 
                SMST,   8, 
                SMAD,   8, 
                SMCM,   8, 
                SMD0,   256, 
                BCNT,   8, 
                SMAA,   24, 
                SMBN,   8, 
                Offset (0x90), 
                BMNN,   72, 
                BN00,   8, 
                BN01,   8, 
                BN02,   8, 
                BN03,   8, 
                BN04,   8, 
                BN05,   8, 
                BN06,   8, 
                Offset (0xA1), 
                    ,   1, 
                VIDO,   1, 
                TOUP,   1, 
                Offset (0xA2), 
                ODTS,   8, 
                OSTY,   4, 
                    ,   1, 
                PBOV,   1, 
                ECRD,   1, 
                ADPT,   1, 
                PWAK,   1, 
                MWAK,   1, 
                LWAK,   1, 
                RWAK,   1, 
                WWAK,   1, 
                UWAK,   1, 
                KWAK,   1, 
                TWAK,   1, 
                CCAC,   1, 
                AOAC,   1, 
                BLAC,   1, 
                PSRC,   1, 
                BOAC,   1, 
                LCAC,   1, 
                AAAC,   1, 
                ACAC,   1, 
                S3ST,   1, 
                S3RM,   1, 
                S4ST,   1, 
                S4RM,   1, 
                S5ST,   1, 
                S5RM,   1, 
                CSST,   1, 
                CSRM,   1, 
                OSTT,   8, 
                OSST,   8, 
                THLT,   8, 
                TCNL,   8, 
                MODE,   1, 
                DFLG,   1, 
                    ,   1, 
                INIT,   1, 
                FAN1,   1, 
                FAN2,   1, 
                FANT,   1, 
                SKNM,   1, 
                SDTM,   8, 
                FSSN,   4, 
                FANU,   4, 
                PCVL,   6, 
                SWTO,   1, 
                TTHR,   1, 
                TTHM,   1, 
                THTL,   1, 
                TFCT,   1, 
                NPST,   5, 
                CTMP,   8, 
                CTML,   8, 
                EST3,   8, 
                SKTB,   8, 
                SKTC,   8, 
                DPOT,   8, 
                EST1,   8, 
                EST2,   8, 
                    ,   1, 
                LIDF,   1, 
                PMEE,   1, 
                PWBE,   1, 
                RNGE,   1, 
                BTWE,   1, 
                Offset (0xB9), 
                BRTS,   8, 
                S35M,   1, 
                S35S,   1, 
                    ,   1, 
                MSFG,   1, 
                FFEN,   1, 
                FFST,   1, 
                Offset (0xBB), 
                WLAT,   1, 
                BTAT,   1, 
                WLEX,   1, 
                BTEX,   1, 
                KLSW,   1, 
                WLOK,   1, 
                AT3G,   1, 
                EX3G,   1, 
                PJID,   8, 
                CPUJ,   3, 
                CPNM,   3, 
                GATY,   2, 
                BTP0,   1, 
                BTP1,   1, 
                    ,   2, 
                BCC0,   1, 
                BCC1,   1, 
                Offset (0xBF), 
                Offset (0xC0), 
                BTY0,   1, 
                BAM0,   1, 
                BAL0,   1, 
                    ,   1, 
                BMF0,   3, 
                Offset (0xC1), 
                BST0,   8, 
                BRC0,   16, 
                BSN0,   16, 
                BPV0,   16, 
                BDV0,   16, 
                BDC0,   16, 
                BFC0,   16, 
                GAU0,   8, 
                BAT0,   8, 
                BPC0,   16, 
                BAC0,   16, 
                BCG0,   16, 
                BFCB,   16, 
                BTPB,   16, 
                BOL0,   1, 
                BFS0,   1, 
                Offset (0xDB), 
                ORRF,   1, 
                Offset (0xDC), 
                    ,   2, 
                SBIS,   1, 
                Offset (0xE3), 
                BCV1,   16, 
                BCV2,   16, 
                BCV3,   16, 
                BCV4,   16, 
                MUAC,   16, 
                Offset (0xEE), 
                CYC1,   8, 
                Offset (0xF1), 
                BSSB,   16, 
                Offset (0xF5), 
                CYC0,   8, 
                BACV,   16, 
                Offset (0xFB), 
                OTAW,   8, 
                Offset (0xFD), 
                BDN0,   8, 
                BMD0,   16, 
                Offset (0x2C3), 
                    ,   3, 
                GBTC,   1, 
                Offset (0x3B0), 
                Offset (0x3BC), 
                CPUT,   8, 
                Offset (0x3BE), 
                CPUU,   8, 
                EXTS,   8, 
                Offset (0x3C1)
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
- `CPUFriend.kext`(and`CPUFriendDataProvider.kext`for improve battery)
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

![Screen Shot 2022-04-28 at 22 06 50](https://user-images.githubusercontent.com/35195176/165813795-f1088b15-893f-46f2-879b-2169153cc9d2.png)


## Thanks：


- [@hackintoshlife](https://github.com/Hackintoshlifeit) best gp for hackintosh


- [@acidanthera](https://github.com/acidanthera/OpenCorePkg) for OpenCorePkg 


- [@apple](https://www.apple.com/) created macos 


- [@Baio1977](https://github.com/Baio1977) He made efi folder and ssdt


- [@Lorys89](https://github.com/Lorys89) for fix bios problem

 
- [@zxystd](https://github.com/OpenIntelWireless/itlwm) created kexts of wifi and bluetooth  
