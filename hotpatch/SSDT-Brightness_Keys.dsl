DefinitionBlock("", "SSDT", 2, "hack", "brightnesskeys", 0)
{
    
    External (\_SB.PCI0.LPCB.PS2K, DeviceObj)
    External (\_SB.PCI0.LPCB.EC0, DeviceObj)    // (from opcode)
    
    // For brightness keys.
    Scope (_SB.PCI0.LPCB.EC0)
    {
        Method (_Q11, 0, NotSerialized)  // _Qxx: EC Query
        {
            // Brightness Down
            Notify (\_SB.PCI0.LPCB.PS2K, 0x0365)
        }

        Method (_Q12, 0, NotSerialized)  // _Qxx: EC Query
        {
            // Brightness Up
            Notify (\_SB.PCI0.LPCB.PS2K, 0x0366)
        }
    }
}
