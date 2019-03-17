#Include .\lib\IME\UTF8\IME.ahk

*~LAlt::Send {Blind}{vk07}

LAlt up::
    if (A_PriorKey == "LAlt")
    {
        IME_SET(0)
    }
Return

*~RAlt::Send {Blind}{vk07}

RAlt up::
    if (A_PriorKey == "RAlt")
    {
        IME_SET(1)
    }
Return