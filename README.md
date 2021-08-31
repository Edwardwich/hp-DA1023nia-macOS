

# HP DA1023nia Hackintosh

## Configuration

| Specifications      | Detail                       |
| ------------------- | ---------------------------- |
| CPU                 | Intel(R) Core(TM) i5-8265U   |
| Integrated Graphics | Intel UHD Graphics 620       |
| Sound Card          | Realtek ALC236 (layout-id:14) |
| Wireless Card       | RTL8821CE Replaced with(Intel Wireless N-7265)      |


## MacOS Versions Supported:

- macOS Big Sur 11.5.2

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

<details>  
<summary> TNX: </summary>   
     
 <details>  
<summary>1. SSDT-PNLF</summary>   
  
Thanks[@Lorys89,(https://github.com/acidanthera/OpenCorePkg/pull/279#issuecomment-892493005)]
  
he is developer of SSDT-PNLF.   

</details>
 
 <details>  
<summary>2. WIFI</summary>   
  
Thanks[@zxystd,(https://github.com/OpenIntelWireless/itlwm)]  
  
he is developer of wifi kext.   


</details>


</details>



 

#### Screen Shot

![Screen Shot 2021-08-31 at 11 43 02 AM](https://user-images.githubusercontent.com/35195176/131459358-450decf9-e3a9-4c92-af8f-6f9e449dbf58.png)
![Screen Shot 2021-08-31 at 10 48 22 AM](https://user-images.githubusercontent.com/35195176/131452081-4812a928-e014-4eb5-8e25-7303ae848981.png)
![Screen Shot 2021-07-17 at 11 09 16 PM](https://user-images.githubusercontent.com/35195176/126046637-82be6186-ce66-4f39-88b9-6b9069f3016d.png)
![Screen Shot 2021-07-19 at 10 01 37 PM](https://user-images.githubusercontent.com/35195176/126202033-154ae712-eb06-4125-b2df-a8f9835b8234.png)
![Screen Shot 2021-07-17 at 11 09 22 PM](https://user-images.githubusercontent.com/35195176/126046639-7fb97a70-28a6-49b3-bdc2-9a550e480792.png)
![Screen Shot 2021-07-19 at 9 57 50 PM](https://user-images.githubusercontent.com/35195176/126201610-3d16c481-d323-4741-b81b-1053b74ec9d8.png)
![Screen Shot 2021-07-19 at 9 59 02 PM](https://user-images.githubusercontent.com/35195176/126201784-4fd6274f-e3ce-4e57-b79b-cce944536331.png)
