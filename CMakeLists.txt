cmake_minimum_required(VERSION 3.25)
project(launcher)

set(CMAKE_CXX_STANDARD 11)
include_directories($ENV{JAVA_HOME}/include $ENV{JAVA_HOME}/include/darwin)

add_executable(launcher
        src/AppLauncher.cpp
        src/AppLauncher.h
        src/CfgFile.cpp
        src/CfgFile.h
        src/Dll.h
        src/ErrorHandling.cpp
        src/ErrorHandling.h
        src/FileUtils.cpp
        src/FileUtils.h
        src/JvmLauncher.cpp
        src/JvmLauncher.h
        src/JvmLauncherLib.c
        src/Log.cpp
        src/Log.h
        src/MacLauncher.cpp
        src/MacSysInfo.cpp
        src/PackageFile.cpp
        src/PackageFile.h
        src/PlatformLogEvent.cpp
        src/PlatformLogEvent.h
        src/SourceCodePos.h
        src/SysInfo.h
        src/Toolbox.h
        src/UnixDll.cpp
        src/UnixFileUtils.cpp
        src/UnixSysInfo.cpp
        src/UnixSysInfo.h
        src/app.cpp
        src/app.h
        src/tstrings.cpp
        src/tstrings.h
        )
