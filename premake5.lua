project "ImNode"
	kind "StaticLib"
	language "C++"
    staticruntime "off"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	includedirs
	{
	   "../imgui",
	   "../imgui/backends"
	}
 
	links
	{
		"ImGui"
	}

	files
	{
		"crude_json.cpp",
		"crude_json.h",
		"imgui_bezier_math.h",
		"imgui_canvas.cpp",
		"imgui_canvas.h",
		"imgui_extra_math.h",
		"imgui_node_editor.cpp",
		"imgui_node_editor.h",
		"imgui_node_editor_api.cpp",
		"imgui_node_editor_internal.h",
	}

	filter "system:windows"
		systemversion "latest"
		cppdialect "C++17"

	filter "system:linux"
		pic "On"
		systemversion "latest"
		cppdialect "C++17"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"

    filter "configurations:Dist"
		runtime "Release"
		optimize "on"
        symbols "off"
