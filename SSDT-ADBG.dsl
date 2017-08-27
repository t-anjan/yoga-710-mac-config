// Fixing ADBG device

DefinitionBlock("", "SSDT", 2, "hack", "ADBG", 0)
{
    Scope (_SB)
    {
        Method (ADBG, 1, Serialized)
        {
            Return(0)
        }
    }
    
}
//EOF
