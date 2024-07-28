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
		"contrib/irrXML/*.cpp",
		"contrib/irrXML/*.h",
		"contrib/unzip/*.c",
		"contrib/unzip/*.h",
		"contrib/pugixml/*.hpp",
		"contrib/pugixml/*.cpp",
		
		"code/AssetLib/MD2/*.h",
		"code/AssetLib/MD2/*.cpp",
		"code/AssetLib/MDL/**.h",
		"code/AssetLib/MDL/**.cpp",
		"code/AssetLib/Obj/*.h",
		"code/AssetLib/Obj/*.cpp",
		"code/CApi/AssimpCExport.cpp",
		"code/CApi/CInterfaceIOWrapper.h",
		"code/CApi/CInterfaceIOWrapper.cpp",
		"code/Common/*.h",
		"code/Common/*.cpp",
		"code/Geometry/*.h",
		"code/Geometry/*.cpp",
		"code/Material/*.h",
		"code/Material/*.cpp",
		"code/PostProcessing/*.h",
		"code/PostProcessing/*.cpp",
		
		"include/*.h",
	}

	includedirs {
		"code",
		"code/CApi",
		"contrib",
		"contrib/utf8cpp/source",
		
		"contrib/irrXML",
		"contrib/pugixml",
		"contrib/unzip",
		"contrib/zlib",

		"include"
	}

	links { "zlib" }

	defines {
		"ASSIMP_BUILD_NO_USD_IMPORTER", 
		"ASSIMP_BUILD_NO_X_IMPORTER", 
		"ASSIMP_BUILD_NO_AMF_IMPORTER", 
		"ASSIMP_BUILD_NO_3DS_IMPORTER", 
		"ASSIMP_BUILD_NO_M3D_IMPORTER", 
		"ASSIMP_BUILD_NO_MD3_IMPORTER", 
		"ASSIMP_BUILD_NO_PLY_IMPORTER", 
		"ASSIMP_BUILD_NO_ASE_IMPORTER", 
		"ASSIMP_BUILD_NO_3DS_IMPORTER", 
		"ASSIMP_BUILD_NO_HMP_IMPORTER", 
		"ASSIMP_BUILD_NO_SMD_IMPORTER", 
		"ASSIMP_BUILD_NO_MDC_IMPORTER", 
		"ASSIMP_BUILD_NO_MD5_IMPORTER", 
		"ASSIMP_BUILD_NO_STL_IMPORTER", 
		"ASSIMP_BUILD_NO_LWO_IMPORTER", 
		"ASSIMP_BUILD_NO_DXF_IMPORTER", 
		"ASSIMP_BUILD_NO_NFF_IMPORTER", 
		"ASSIMP_BUILD_NO_RAW_IMPORTER", 
		"ASSIMP_BUILD_NO_SIB_IMPORTER", 
		"ASSIMP_BUILD_NO_OFF_IMPORTER", 
		"ASSIMP_BUILD_NO_AC_IMPORTER", 
		"ASSIMP_BUILD_NO_BVH_IMPORTER", 
		"ASSIMP_BUILD_NO_IRRMESH_IMPORTER", 
		"ASSIMP_BUILD_NO_IRR_IMPORTER", 
		"ASSIMP_BUILD_NO_Q3D_IMPORTER", 
		"ASSIMP_BUILD_NO_B3D_IMPORTER", 
		"ASSIMP_BUILD_NO_COLLADA_IMPORTER", 
		"ASSIMP_BUILD_NO_TERRAGEN_IMPORTER", 
		"ASSIMP_BUILD_NO_CSM_IMPORTER", 
		"ASSIMP_BUILD_NO_3D_IMPORTER", 
		"ASSIMP_BUILD_NO_LWS_IMPORTER", 
		"ASSIMP_BUILD_NO_OGRE_IMPORTER", 
		"ASSIMP_BUILD_NO_OPENGEX_IMPORTER", 
		"ASSIMP_BUILD_NO_MS3D_IMPORTER", 
		"ASSIMP_BUILD_NO_COB_IMPORTER", 
		"ASSIMP_BUILD_NO_BLEND_IMPORTER", 
		"ASSIMP_BUILD_NO_Q3BSP_IMPORTER", 
		"ASSIMP_BUILD_NO_NDO_IMPORTER", 
		"ASSIMP_BUILD_NO_IFC_IMPORTER", 
		"ASSIMP_BUILD_NO_XGL_IMPORTER", 
		"ASSIMP_BUILD_NO_FBX_IMPORTER", 
		"ASSIMP_BUILD_NO_ASSBIN_IMPORTER", 
		"ASSIMP_BUILD_NO_GLTF_IMPORTER", 
		"ASSIMP_BUILD_NO_GLTF1_IMPORTER", 
		"ASSIMP_BUILD_NO_GLTF_IMPORTER", 
		"ASSIMP_BUILD_NO_GLTF2_IMPORTER", 
		"ASSIMP_BUILD_NO_C4D_IMPORTER", 
		"ASSIMP_BUILD_NO_3MF_IMPORTER", 
		"ASSIMP_BUILD_NO_X3D_IMPORTER", 
		"ASSIMP_BUILD_NO_MMD_IMPORTER", 
		"ASSIMP_BUILD_NO_IQM_IMPORTER"
	}

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