// Automatic injection of HDEF properties

DefinitionBlock("", "SSDT", 2, "hack", "HDEF", 0)
{
    External(_SB.PCI0.HDEF, DeviceObj)
    External(RMCF.AUDL, IntObj)

    // Note: If your ACPI set (DSDT+SSDTs) does not define HDEF (or AZAL)
    // add this Device definition (by uncommenting it)
    //
    //Device(_SB.PCI0.HDEF)
    //{
    //    Name(_ADR, 0x001b0000)
    //    Name(_PRW, Package() { 0x0d, 0x05 }) // may need tweaking (or not needed)
    //}

    // inject properties for audio
    Method(_SB.PCI0.HDEF._DSM, 4)
    {
        If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
        Return (Package()
        {
            "AAPL,slot-name", Buffer() { "Built in" },
            "layout-id", Buffer() { 0x03, 0x00, 0x00, 0x00 },
            "device_type", Buffer() { "Audio Controller" },
            "built-in", Buffer() { 0x00 },
            "PinConfigurations", Buffer() { },
            "hda-gfx", Buffer() { "onboard-1" },
            //"MaximumBootBeepVolume", 77,
        })
    }
}
//EOF
