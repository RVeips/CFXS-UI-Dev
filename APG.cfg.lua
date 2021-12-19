return {
    ProjectName = "CFXS UI Dev",
    
    Toolchain = "GCC",
    UnityBuildBatchSize = 16,

    CPU = "TM4C1294NCPDT",
    CLOCK_FREQUENCY = 120e6,
    
    Modules = {
        "CMake",
        "CFXS-Base",
        --"CFXS-Platform",
        "CFXS-HW",
        "tm4c-driverlib",
        "LicenseGen",
        "SeggerRTT"
    },

    IncludeDirectories = {
        "/src"
    },

    Defines = {
        "debug:DEBUG",
        "debug:CFXS_DEBUG",
        "debug:CFXS_DEBUG_ASSERT",
        
        "release:RELEASE",
        "release:NDEBUG",
    },

    LicenseHeader = table.concat({
        '// [CFXS] //',
        '${ProjectNameRaw}',
        '${Year} | CFXS / Rihards Veips'
    }, '\n')
}