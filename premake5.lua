workspace "SDL2Engine"
   configurations { "Debug", "Release" }

project "Engine"
   kind "ConsoleApp"
   language "C"
   targetdir "bin/%{cfg.buildcfg}"

   includedirs { 
   "vendor/SDL2/include/",
   "vendor/glad/include/",
   "vendor/SDL2_mixer-2.0.0/include",
   "vendor/freetype2/include"
   }
   libdirs { 
   "vendor/SDL2/lib/", 
   "vendor/SDL2_mixer-2.0.0/lib/",
   "vendor/freetype2/lib/"
   }
   links { "SDL2", "SDL2main", "SDL2_mixer","freetype"}
   files { 
   "src/**.h", 
   "src/**.c", 
   "vendor/glad/src/**.c" 
   }

   filter "configurations:Debug"
      defines { "DEBUG" }
      symbols "On"

   filter "configurations:Release"
      defines { "NDEBUG" }
      optimize "On"