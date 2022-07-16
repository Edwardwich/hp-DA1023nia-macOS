/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200925 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of iASLcV5MrG.aml, Sat Jul 16 21:54:34 2022
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000005E9 (1513)
 *     Revision         0x02
 *     Checksum         0xF9
 *     OEM ID           "hack"
 *     OEM Table ID     "HackLife"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20200925 (538970405)
 */
DefinitionBlock ("", "SSDT", 2, "hack", "HackLife", 0x00000000)
{
    External (_SB_.AWAC._STA, UnknownObj)
    External (_SB_.PCI0, DeviceObj)
    External (_SB_.PCI0.GFX0, DeviceObj)
    External (_SB_.PCI0.LPCB, DeviceObj)
    External (_SB_.PCI0.LPCB.ACAD, DeviceObj)
    External (_SB_.PCI0.LPCB.ARTC, DeviceObj)
    External (_SB_.PCI0.LPCB.PS2K, DeviceObj)
    External (_SB_.PCI0.LPCB.RTC_._STA, UnknownObj)
    External (_SB_.PCI0.RP05.PXSX._OFF, MethodObj)    // 0 Arguments
    External (_SB_.PR00, ProcessorObj)
    External (HPTE, FieldUnitObj)
    External (XPRW, MethodObj)    // 2 Arguments

    Scope (\)
    {
        If (_OSI ("Darwin"))
        {
            \_SB.AWAC._STA = Zero
            \_SB.PCI0.LPCB.RTC._STA = 0x0F
            HPTE = Zero
        }

        Scope (_SB)
        {
            Scope (PCI0)
            {
                Device (DGPU)
                {
                    Name (_HID, "DGPU1000")  // _HID: Hardware ID
                    Method (_INI, 0, NotSerialized)  // _INI: Initialize
                    {
                        If (CondRefOf (\_SB.PCI0.RP05.PXSX._OFF))
                        {
                            \_SB.PCI0.RP05.PXSX._OFF ()
                        }
                    }

                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If (_OSI ("Darwin"))
                        {
                            Return (0x0F)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }
                }

                Device (GAUS)
                {
                    Name (_ADR, 0x00080000)  // _ADR: Address
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If (_OSI ("Darwin"))
                        {
                            Return (0x0F)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }
                }

                Scope (GFX0)
                {
                    Device (PNLF)
                    {
                        Name (_HID, EisaId ("APP0002"))  // _HID: Hardware ID
                        Name (_CID, "backlight")  // _CID: Compatible ID
                        Name (_UID, 0x13)  // _UID: Unique ID
                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            If (_OSI ("Darwin"))
                            {
                                Return (0x0B)
                            }
                            Else
                            {
                                Return (Zero)
                            }
                        }
                    }
                }

                Scope (LPCB)
                {
                    Scope (ACAD)
                    {
                        If (_OSI ("Darwin"))
                        {
                            Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                            {
                                0x18, 
                                0x03
                            })
                        }
                    }

                    Device (ALS0)
                    {
                        Name (_HID, "ACPI0008" /* Ambient Light Sensor Device */)  // _HID: Hardware ID
                        Name (_CID, "smc-als")  // _CID: Compatible ID
                        Name (_ALI, 0x012C)  // _ALI: Ambient Light Illuminance
                        Name (_ALR, Package (0x01)  // _ALR: Ambient Light Response
                        {
                            Package (0x02)
                            {
                                0x64, 
                                0x012C
                            }
                        })
                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            If (_OSI ("Darwin"))
                            {
                                Return (0x0F)
                            }
                            Else
                            {
                                Return (Zero)
                            }
                        }
                    }

                    Device (ARTC)
                    {
                        Name (_HID, "ACPI000E" /* Time and Alarm Device */)  // _HID: Hardware ID
                        Method (_GCP, 0, NotSerialized)  // _GCP: Get Capabilities
                        {
                            Return (0x05)
                        }

                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            If (_OSI ("Darwin"))
                            {
                                Return (0x0F)
                            }
                            Else
                            {
                                Return (Zero)
                            }
                        }
                    }

                    Device (DMAC)
                    {
                        Name (_HID, EisaId ("PNP0200") /* PC-class DMA Controller */)  // _HID: Hardware ID
                        Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                        {
                            IO (Decode16,
                                0x0000,             // Range Minimum
                                0x0000,             // Range Maximum
                                0x01,               // Alignment
                                0x20,               // Length
                                )
                            IO (Decode16,
                                0x0081,             // Range Minimum
                                0x0081,             // Range Maximum
                                0x01,               // Alignment
                                0x11,               // Length
                                )
                            IO (Decode16,
                                0x0093,             // Range Minimum
                                0x0093,             // Range Maximum
                                0x01,               // Alignment
                                0x0D,               // Length
                                )
                            IO (Decode16,
                                0x00C0,             // Range Minimum
                                0x00C0,             // Range Maximum
                                0x01,               // Alignment
                                0x20,               // Length
                                )
                            DMA (Compatibility, NotBusMaster, Transfer8_16, )
                                {4}
                        })
                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            If (_OSI ("Darwin"))
                            {
                                Return (0x0F)
                            }
                            Else
                            {
                                Return (Zero)
                            }
                        }
                    }

                    Device (EC)
                    {
                        Name (_HID, "ACID0001")  // _HID: Hardware ID
                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            If (_OSI ("Darwin"))
                            {
                                Return (0x0F)
                            }
                            Else
                            {
                                Return (Zero)
                            }
                        }
                    }

                    Device (PMCR)
                    {
                        Name (_HID, EisaId ("APP9876"))  // _HID: Hardware ID
                        Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                        {
                            Memory32Fixed (ReadWrite,
                                0xFE000000,         // Address Base
                                0x00010000,         // Address Length
                                )
                        })
                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            If (_OSI ("Darwin"))
                            {
                                Return (0x0B)
                            }
                            Else
                            {
                                Return (Zero)
                            }
                        }
                    }

                    Scope (PS2K)
                    {
                        Name (RMCF, Package (0x02)
                        {
                            "Mouse", 
                            Package (0x02)
                            {
                                "WakeDelay", 
                                0xC8
                            }
                        })
                    }
                }

                Device (MCHC)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If (_OSI ("Darwin"))
                        {
                            Return (0x0F)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }
                }

                Device (SRAM)
                {
                    Name (_ADR, 0x00140002)  // _ADR: Address
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If (_OSI ("Darwin"))
                        {
                            Return (0x0F)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }
                }

                Device (TERM)
                {
                    Name (_ADR, 0x00120000)  // _ADR: Address
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If (_OSI ("Darwin"))
                        {
                            Return (0x0F)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }
                }

                Device (XSPI)
                {
                    Name (_ADR, 0x001F0005)  // _ADR: Address
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If (_OSI ("Darwin"))
                        {
                            Return (0x0F)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }
                }
            }

            Scope (PR00)
            {
                If (_OSI ("Darwin"))
                {
                    Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                    {
                        If (!Arg2)
                        {
                            Return (Buffer (One)
                            {
                                 0x03                                             // .
                            })
                        }

                        Return (Package (0x02)
                        {
                            "plugin-type", 
                            One
                        })
                    }
                }
            }

            Device (USBX)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    If ((Arg2 == Zero))
                    {
                        Return (Buffer (One)
                        {
                             0x03                                             // .
                        })
                    }

                    Return (Package (0x04)
                    {
                        "kUSBSleepPortCurrentLimit", 
                        0x0BB8, 
                        "kUSBWakePortCurrentLimit", 
                        0x0BB8
                    })
                }

                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (_OSI ("Darwin"))
                    {
                        Return (0x0F)
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }
            }

            Device (SLPB)
            {
                Name (_HID, EisaId ("PNP0C0E") /* Sleep Button Device */)  // _HID: Hardware ID
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (_OSI ("Darwin"))
                    {
                        Return (0x0B)
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }
            }
        }

        Method (XOSI, 1, NotSerialized)
        {
            Local0 = Package (0x14)
                {
                    "Windows 2012"
                }
            If (_OSI ("Darwin"))
            {
                Return ((Ones != Match (Local0, MEQ, Arg0, MTR, Zero, Zero)))
            }
            Else
            {
                Return (_OSI (Arg0))
            }
        }

        Method (GPRW, 2, NotSerialized)
        {
            If (_OSI ("Darwin"))
            {
                If ((0x6D == Arg0))
                {
                    Return (Package (0x02)
                    {
                        0x6D, 
                        Zero
                    })
                }

                If ((0x0D == Arg0))
                {
                    Return (Package (0x02)
                    {
                        0x0D, 
                        Zero
                    })
                }
            }

            Return (XPRW (Arg0, Arg1))
        }
    }
}

