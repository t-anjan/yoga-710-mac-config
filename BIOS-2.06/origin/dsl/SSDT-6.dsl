/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20161210-64(RM)
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-7.aml, Tue Feb 13 14:48:10 2018
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000051E (1310)
 *     Revision         0x02
 *     Checksum         0x59
 *     OEM ID           "LENOVO"
 *     OEM Table ID     "CB-01   "
 *     OEM Revision     0x00000001 (1)
 *     Compiler ID      "ACPI"
 *     Compiler Version 0x00040000 (262144)
 */
DefinitionBlock ("", "SSDT", 2, "LENOVO", "CB-01   ", 0x00000001)
{
    /*
     * External declarations were imported from
     * a reference file -- refs.txt
     */

    External (_GPE.MMTB, MethodObj)    // Imported: 0 Arguments
    External (_GPE.VHOV, MethodObj)    // Imported: 3 Arguments
    External (_SB_.GGIV, MethodObj)    // 1 Arguments (from opcode)
    External (_SB_.PCI0.GEXP, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.GEXP.SGEP, MethodObj)    // 3 Arguments (from opcode)
    External (_SB_.PCI0.GFX0.DD02._BCM, MethodObj)    // Imported: 1 Arguments
    External (_SB_.PCI0.LPCB.H_EC.ECMD, MethodObj)    // Imported: 1 Arguments
    External (_SB_.PCI0.LPCB.H_EC.ECRD, MethodObj)    // Imported: 1 Arguments
    External (_SB_.PCI0.LPCB.H_EC.ECWT, MethodObj)    // Imported: 2 Arguments
    External (_SB_.PCI0.PEG0.PEGP.SGPO, MethodObj)    // Imported: 2 Arguments
    External (_SB_.PCI0.SAT0, UnknownObj)
    External (_SB_.PCI0.SAT0.PRT1, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.SAT0.PRT3, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.SAT0.SDSM, MethodObj)    // Imported: 4 Arguments
    External (_SB_.PCI0.XHC_.RHUB.TPLD, MethodObj)    // Imported: 2 Arguments
    External (_SB_.SGOV, MethodObj)    // 2 Arguments (from opcode)
    External (MDBG, MethodObj)    // Imported: 1 Arguments
    External (RCG0, IntObj)    // (from opcode)
    External (ZPOD, UnknownObj)    // (from opcode)

    If (LAnd (And (RCG0, One), One))
    {
        Scope (\_SB.PCI0.SAT0.PRT1)
        {
            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                Name (_T_4, Zero)  // _T_x: Emitted by ASL Compiler
                Name (_T_3, Zero)  // _T_x: Emitted by ASL Compiler
                Name (_T_2, Zero)  // _T_x: Emitted by ASL Compiler
                Name (_T_1, Zero)  // _T_x: Emitted by ASL Compiler
                Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                If (LEqual (Arg0, ToUUID ("bdfaef30-aebb-11de-8a39-0800200c9a66")))
                {
                    While (One)
                    {
                        Store (ToInteger (Arg2), _T_0)
                        If (LEqual (_T_0, Zero))
                        {
                            While (One)
                            {
                                Store (ToInteger (Arg1), _T_1)
                                If (LEqual (_T_1, One))
                                {
                                    While (One)
                                    {
                                        Store (ToInteger (ZPOD), _T_2)
                                        If (LNotEqual (Match (Package (0x03)
                                                        {
                                                            One, 
                                                            0x02, 
                                                            0x03
                                                        }, MEQ, _T_2, MTR, Zero, Zero), Ones))
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x0F                                           
                                            })
                                        }
                                        Else
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x00                                           
                                            })
                                        }

                                        Break
                                    }
                                }
                                Else
                                {
                                    Return (Buffer (One)
                                    {
                                         0x00                                           
                                    })
                                }

                                Break
                            }
                        }
                        ElseIf (LEqual (_T_0, One))
                        {
                            Return (One)
                        }
                        ElseIf (LEqual (_T_0, 0x02))
                        {
                            While (One)
                            {
                                Store (ToInteger (ZPOD), _T_3)
                                If (LNotEqual (Match (Package (0x01)
                                                {
                                                    One
                                                }, MEQ, _T_3, MTR, Zero, Zero), Ones))
                                {
                                    \_SB.PCI0.GEXP.SGEP (Zero, 0x17, Zero)
                                }
                                ElseIf (LNotEqual (Match (Package (0x02)
                                                {
                                                    0x02, 
                                                    0x03
                                                }, MEQ, _T_3, MTR, Zero, Zero), Ones))
                                {
                                    \_SB.SGOV (0x01060001, Zero)
                                }

                                Break
                            }

                            Return (One)
                        }
                        ElseIf (LEqual (_T_0, 0x03))
                        {
                            While (One)
                            {
                                Store (ToInteger (ZPOD), _T_4)
                                If (LNotEqual (Match (Package (0x01)
                                                {
                                                    One
                                                }, MEQ, _T_4, MTR, Zero, Zero), Ones))
                                {
                                    \_SB.PCI0.GEXP.SGEP (Zero, 0x17, One)
                                }
                                ElseIf (LNotEqual (Match (Package (0x01)
                                                {
                                                    0x02
                                                }, MEQ, _T_4, MTR, Zero, Zero), Ones))
                                {
                                    If (LEqual (\_SB.GGIV (0x01040001), Zero))
                                    {
                                        \_SB.SGOV (0x01060001, One)
                                    }
                                }
                                ElseIf (LNotEqual (Match (Package (0x01)
                                                {
                                                    0x03
                                                }, MEQ, _T_4, MTR, Zero, Zero), Ones))
                                {
                                    If (LEqual (\_SB.GGIV (0x01050000), Zero))
                                    {
                                        \_SB.SGOV (0x01060001, One)
                                    }
                                }

                                Break
                            }

                            Sleep (0x0A)
                            Return (One)
                        }
                        Else
                        {
                            Return (Zero)
                        }

                        Break
                    }
                }
                Else
                {
                    Return (Buffer (One)
                    {
                         0x00                                           
                    })
                }
            }
        }

        Scope (\_SB.PCI0.SAT0.PRT3)
        {
            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                Name (_T_4, Zero)  // _T_x: Emitted by ASL Compiler
                Name (_T_3, Zero)  // _T_x: Emitted by ASL Compiler
                Name (_T_2, Zero)  // _T_x: Emitted by ASL Compiler
                Name (_T_1, Zero)  // _T_x: Emitted by ASL Compiler
                Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                If (LEqual (Arg0, ToUUID ("bdfaef30-aebb-11de-8a39-0800200c9a66")))
                {
                    While (One)
                    {
                        Store (ToInteger (Arg2), _T_0)
                        If (LEqual (_T_0, Zero))
                        {
                            While (One)
                            {
                                Store (ToInteger (Arg1), _T_1)
                                If (LEqual (_T_1, One))
                                {
                                    While (One)
                                    {
                                        Store (ToInteger (ZPOD), _T_2)
                                        If (LNotEqual (Match (Package (0x03)
                                                        {
                                                            One, 
                                                            0x02, 
                                                            0x03
                                                        }, MEQ, _T_2, MTR, Zero, Zero), Ones))
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x0F                                           
                                            })
                                        }
                                        Else
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x00                                           
                                            })
                                        }

                                        Break
                                    }
                                }
                                Else
                                {
                                    Return (Buffer (One)
                                    {
                                         0x00                                           
                                    })
                                }

                                Break
                            }
                        }
                        ElseIf (LEqual (_T_0, One))
                        {
                            Return (One)
                        }
                        ElseIf (LEqual (_T_0, 0x02))
                        {
                            While (One)
                            {
                                Store (ToInteger (ZPOD), _T_3)
                                If (LNotEqual (Match (Package (0x01)
                                                {
                                                    One
                                                }, MEQ, _T_3, MTR, Zero, Zero), Ones))
                                {
                                    \_SB.PCI0.GEXP.SGEP (Zero, 0x17, Zero)
                                }
                                ElseIf (LNotEqual (Match (Package (0x02)
                                                {
                                                    0x02, 
                                                    0x03
                                                }, MEQ, _T_3, MTR, Zero, Zero), Ones))
                                {
                                    \_SB.SGOV (0x01060001, Zero)
                                }

                                Break
                            }

                            Return (One)
                        }
                        ElseIf (LEqual (_T_0, 0x03))
                        {
                            While (One)
                            {
                                Store (ToInteger (ZPOD), _T_4)
                                If (LNotEqual (Match (Package (0x01)
                                                {
                                                    One
                                                }, MEQ, _T_4, MTR, Zero, Zero), Ones))
                                {
                                    \_SB.PCI0.GEXP.SGEP (Zero, 0x17, One)
                                }
                                ElseIf (LNotEqual (Match (Package (0x01)
                                                {
                                                    0x02
                                                }, MEQ, _T_4, MTR, Zero, Zero), Ones))
                                {
                                    If (LEqual (\_SB.GGIV (0x01040001), Zero))
                                    {
                                        \_SB.SGOV (0x01060001, One)
                                    }
                                }
                                ElseIf (LNotEqual (Match (Package (0x01)
                                                {
                                                    0x03
                                                }, MEQ, _T_4, MTR, Zero, Zero), Ones))
                                {
                                    If (LEqual (\_SB.GGIV (0x01050000), Zero))
                                    {
                                        \_SB.SGOV (0x01060001, One)
                                    }
                                }

                                Break
                            }

                            Sleep (0x0A)
                            Return (One)
                        }
                        Else
                        {
                            Return (Zero)
                        }

                        Break
                    }
                }
                Else
                {
                    Return (Buffer (One)
                    {
                         0x00                                           
                    })
                }
            }
        }

        Scope (\_GPE)
        {
            Method (_E02, 0, Serialized)  // _Exx: Edge-Triggered GPE
            {
                Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                While (One)
                {
                    Store (ToInteger (ZPOD), _T_0)
                    If (LNotEqual (Match (Package (0x02)
                                    {
                                        0x02, 
                                        0x03
                                    }, MEQ, _T_0, MTR, Zero, Zero), Ones))
                    {
                        If (LEqual (\_SB.GGIV (0x01040001), Zero))
                        {
                            \_SB.SGOV (0x01060001, One)
                        }

                        Notify (\_SB.PCI0.SAT0, 0x81)
                    }
                    Else
                    {
                        Return (Zero)
                    }

                    Break
                }
            }
        }
    }
}

