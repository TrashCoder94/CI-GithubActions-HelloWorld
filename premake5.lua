workspace "HelloWorld"
	architecture "x86_64"
	configurations { "Debug", "Release" }
	startproject "HelloWorld"
	
	flags
	{
		"MultiProcessorCompile"
	}
	
project "HelloWorld"
	location "HelloWorld"
	kind "ConsoleApp"
	language "C++"
	cppdialect "C++17"
	targetdir ("%{wks.location}/Binaries/%{cfg.buildcfg}/")
	objdir("%{wks.location}/Intermediate/%{cfg.buildcfg}/")
	targetname "HelloWorld"
	
	files
	{
		"HelloWorld/Source/**.h",
		"HelloWorld/Source/**.cpp"
	}
	
	filter "system:windows"
		systemversion "latest"
	
	filter "system:linux"
		pic "on"
		systemversion "latest"

	filter "system:macosx"
		systemversion "latest"
	
	filter "configurations:Debug"
		defines { "DEBUG" }
		symbols "On"
		
	filter "configurations:Release"
		defines { "RELEASE" }
		optimize "On"