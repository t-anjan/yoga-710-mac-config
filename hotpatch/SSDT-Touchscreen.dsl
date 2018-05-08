// Enables GPI0 interrupts for Touchscreen on Lenovo Yoga 710-15IKB
DefinitionBlock ("", "SSDT", 2, "hack", "TPL1", 0) {
    External(_SB.PCI0.GPI0, DeviceObj)
    External(_SB.PCI0.I2C1.TPL1, DeviceObj)
    External(_SB.PCI0.I2C1.TPL1.SBFB, BuffObj)
    External(_SB.PCI0.I2C1.TPL1.SBFG, BuffObj)
    
    Scope(_SB.PCI0.GPI0) {
        Method (_STA, 0, NotSerialized)  // _STA: Status
        {
          Return (0x0F) 
        }
    }

    Scope(_SB.PCI0.I2C1.TPL1) {
        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
        {
            Return (ConcatenateResTemplate (SBFB, SBFG))
        }
    }
}
