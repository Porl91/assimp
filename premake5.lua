project "zlib"
	kind "StaticLib"
	language "C"
	warnings "off"

	targetdir "bin/%{cfg.buildcfg}"
	objdir "obj/%{cfg.buildcfg}"

	files {
		"contrib/zlib/*.c",
		"contrib/zlib/*.h"
	}

	filter "platforms:x86"
		architecture "x86"

	filter "platforms:x64"
		architecture "x64"
		excludes {
			"contrib/zlib/inffas86.c"
		}

	filter "configurations:Debug"
		defines { "DEBUG" }
		symbols "On"

	filter "configurations:Release"
		defines { "NDEBUG" }
		optimize "On"

project "Assimp"
	kind "StaticLib"
	language "C++"
	warnings "off"
	
	targetdir "bin/%{cfg.buildcfg}"
	objdir "obj/%{cfg.buildcfg}"

	files {
		"*.cpp",
		"*.h",

		"contrib/irrXML/*.cpp",
		"contrib/irrXML/*.h",
		"contrib/unzip/*.c",
		"contrib/unzip/*.h",
		
		"code/*.cpp",
		
		"include/*.h",
	}

	includedirs {
		"contrib/irrXML",
		"contrib/unzip",
		"contrib/zlib",

		"include"
	}

	links { "zlib" }

	filter "platforms:x86"
		architecture "x86"
		defines { "_M_IX86" }
		
	filter "platforms:x64"
		architecture "x64"
		defines { "_M_X64" }

	filter "configurations:Debug"
		defines { "DEBUG" }
		symbols "On"

	filter "configurations:Release"
		defines { "NDEBUG" }
		optimize "On"