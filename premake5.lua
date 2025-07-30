project "spdlog"
    kind "StaticLib"
    language "C"
    staticruntime "off"
    buildoptions { "/utf-8" }
    
    targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

    files
    {
        "include/spdlog/**.h",
        "src/**.cpp"
    }

    includedirs
    {
        "include"
    }

    defines
    {
        "SPDLOG_COMPILED_LIB"
    }
    
    filter "system:windows"
        systemversion "latest"

    filter "configurations:Debug"
        runtime "Debug"
        symbols "on"

    filter "configurations:Release"
        runtime "Release"
        optimize "on"
