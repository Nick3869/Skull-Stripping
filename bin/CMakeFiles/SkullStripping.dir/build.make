# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list

# Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /usr/bin/ccmake

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/sci/nfanjat/Documents/Depot/SkullStripping/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/sci/nfanjat/Documents/Depot/SkullStripping/bin

# Include any dependencies generated for this target.
include CMakeFiles/SkullStripping.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/SkullStripping.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/SkullStripping.dir/flags.make

moc_mainwindow.cxx: /home/sci/nfanjat/Documents/Depot/SkullStripping/src/mainwindow.h
	$(CMAKE_COMMAND) -E cmake_progress_report /home/sci/nfanjat/Documents/Depot/SkullStripping/bin/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating moc_mainwindow.cxx"
	/usr/bin/moc -I/home/sci/nfanjat/Documents/Depot/SkullStripping/bin/ITKIOFactoryRegistration -I/usr/local/include/ITK-4.4 -I/usr/include -I/usr/include/QtGui -I/usr/include/QtCore -I/home/sci/nfanjat/Documents/Depot/SkullStripping/bin -DITK_IO_FACTORY_REGISTER_MANAGER -DQT_NO_DEBUG -DQT_GUI_LIB -DQT_CORE_LIB -o /home/sci/nfanjat/Documents/Depot/SkullStripping/bin/moc_mainwindow.cxx /home/sci/nfanjat/Documents/Depot/SkullStripping/src/mainwindow.h

ui_mainwindow.h: /home/sci/nfanjat/Documents/Depot/SkullStripping/src/mainwindow.ui
	$(CMAKE_COMMAND) -E cmake_progress_report /home/sci/nfanjat/Documents/Depot/SkullStripping/bin/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating ui_mainwindow.h"
	/usr/bin/uic -o /home/sci/nfanjat/Documents/Depot/SkullStripping/bin/ui_mainwindow.h /home/sci/nfanjat/Documents/Depot/SkullStripping/src/mainwindow.ui

CMakeFiles/SkullStripping.dir/main.cpp.o: CMakeFiles/SkullStripping.dir/flags.make
CMakeFiles/SkullStripping.dir/main.cpp.o: /home/sci/nfanjat/Documents/Depot/SkullStripping/src/main.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/sci/nfanjat/Documents/Depot/SkullStripping/bin/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/SkullStripping.dir/main.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/SkullStripping.dir/main.cpp.o -c /home/sci/nfanjat/Documents/Depot/SkullStripping/src/main.cpp

CMakeFiles/SkullStripping.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SkullStripping.dir/main.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/sci/nfanjat/Documents/Depot/SkullStripping/src/main.cpp > CMakeFiles/SkullStripping.dir/main.cpp.i

CMakeFiles/SkullStripping.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SkullStripping.dir/main.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/sci/nfanjat/Documents/Depot/SkullStripping/src/main.cpp -o CMakeFiles/SkullStripping.dir/main.cpp.s

CMakeFiles/SkullStripping.dir/main.cpp.o.requires:
.PHONY : CMakeFiles/SkullStripping.dir/main.cpp.o.requires

CMakeFiles/SkullStripping.dir/main.cpp.o.provides: CMakeFiles/SkullStripping.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/SkullStripping.dir/build.make CMakeFiles/SkullStripping.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/SkullStripping.dir/main.cpp.o.provides

CMakeFiles/SkullStripping.dir/main.cpp.o.provides.build: CMakeFiles/SkullStripping.dir/main.cpp.o

CMakeFiles/SkullStripping.dir/mainwindow.cpp.o: CMakeFiles/SkullStripping.dir/flags.make
CMakeFiles/SkullStripping.dir/mainwindow.cpp.o: /home/sci/nfanjat/Documents/Depot/SkullStripping/src/mainwindow.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/sci/nfanjat/Documents/Depot/SkullStripping/bin/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/SkullStripping.dir/mainwindow.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/SkullStripping.dir/mainwindow.cpp.o -c /home/sci/nfanjat/Documents/Depot/SkullStripping/src/mainwindow.cpp

CMakeFiles/SkullStripping.dir/mainwindow.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SkullStripping.dir/mainwindow.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/sci/nfanjat/Documents/Depot/SkullStripping/src/mainwindow.cpp > CMakeFiles/SkullStripping.dir/mainwindow.cpp.i

CMakeFiles/SkullStripping.dir/mainwindow.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SkullStripping.dir/mainwindow.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/sci/nfanjat/Documents/Depot/SkullStripping/src/mainwindow.cpp -o CMakeFiles/SkullStripping.dir/mainwindow.cpp.s

CMakeFiles/SkullStripping.dir/mainwindow.cpp.o.requires:
.PHONY : CMakeFiles/SkullStripping.dir/mainwindow.cpp.o.requires

CMakeFiles/SkullStripping.dir/mainwindow.cpp.o.provides: CMakeFiles/SkullStripping.dir/mainwindow.cpp.o.requires
	$(MAKE) -f CMakeFiles/SkullStripping.dir/build.make CMakeFiles/SkullStripping.dir/mainwindow.cpp.o.provides.build
.PHONY : CMakeFiles/SkullStripping.dir/mainwindow.cpp.o.provides

CMakeFiles/SkullStripping.dir/mainwindow.cpp.o.provides.build: CMakeFiles/SkullStripping.dir/mainwindow.cpp.o

CMakeFiles/SkullStripping.dir/moc_mainwindow.cxx.o: CMakeFiles/SkullStripping.dir/flags.make
CMakeFiles/SkullStripping.dir/moc_mainwindow.cxx.o: moc_mainwindow.cxx
	$(CMAKE_COMMAND) -E cmake_progress_report /home/sci/nfanjat/Documents/Depot/SkullStripping/bin/CMakeFiles $(CMAKE_PROGRESS_5)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/SkullStripping.dir/moc_mainwindow.cxx.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/SkullStripping.dir/moc_mainwindow.cxx.o -c /home/sci/nfanjat/Documents/Depot/SkullStripping/bin/moc_mainwindow.cxx

CMakeFiles/SkullStripping.dir/moc_mainwindow.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SkullStripping.dir/moc_mainwindow.cxx.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/sci/nfanjat/Documents/Depot/SkullStripping/bin/moc_mainwindow.cxx > CMakeFiles/SkullStripping.dir/moc_mainwindow.cxx.i

CMakeFiles/SkullStripping.dir/moc_mainwindow.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SkullStripping.dir/moc_mainwindow.cxx.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/sci/nfanjat/Documents/Depot/SkullStripping/bin/moc_mainwindow.cxx -o CMakeFiles/SkullStripping.dir/moc_mainwindow.cxx.s

CMakeFiles/SkullStripping.dir/moc_mainwindow.cxx.o.requires:
.PHONY : CMakeFiles/SkullStripping.dir/moc_mainwindow.cxx.o.requires

CMakeFiles/SkullStripping.dir/moc_mainwindow.cxx.o.provides: CMakeFiles/SkullStripping.dir/moc_mainwindow.cxx.o.requires
	$(MAKE) -f CMakeFiles/SkullStripping.dir/build.make CMakeFiles/SkullStripping.dir/moc_mainwindow.cxx.o.provides.build
.PHONY : CMakeFiles/SkullStripping.dir/moc_mainwindow.cxx.o.provides

CMakeFiles/SkullStripping.dir/moc_mainwindow.cxx.o.provides.build: CMakeFiles/SkullStripping.dir/moc_mainwindow.cxx.o

CMakeFiles/SkullStripping.dir/skullstrip.cpp.o: CMakeFiles/SkullStripping.dir/flags.make
CMakeFiles/SkullStripping.dir/skullstrip.cpp.o: /home/sci/nfanjat/Documents/Depot/SkullStripping/src/skullstrip.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/sci/nfanjat/Documents/Depot/SkullStripping/bin/CMakeFiles $(CMAKE_PROGRESS_6)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/SkullStripping.dir/skullstrip.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/SkullStripping.dir/skullstrip.cpp.o -c /home/sci/nfanjat/Documents/Depot/SkullStripping/src/skullstrip.cpp

CMakeFiles/SkullStripping.dir/skullstrip.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SkullStripping.dir/skullstrip.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/sci/nfanjat/Documents/Depot/SkullStripping/src/skullstrip.cpp > CMakeFiles/SkullStripping.dir/skullstrip.cpp.i

CMakeFiles/SkullStripping.dir/skullstrip.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SkullStripping.dir/skullstrip.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/sci/nfanjat/Documents/Depot/SkullStripping/src/skullstrip.cpp -o CMakeFiles/SkullStripping.dir/skullstrip.cpp.s

CMakeFiles/SkullStripping.dir/skullstrip.cpp.o.requires:
.PHONY : CMakeFiles/SkullStripping.dir/skullstrip.cpp.o.requires

CMakeFiles/SkullStripping.dir/skullstrip.cpp.o.provides: CMakeFiles/SkullStripping.dir/skullstrip.cpp.o.requires
	$(MAKE) -f CMakeFiles/SkullStripping.dir/build.make CMakeFiles/SkullStripping.dir/skullstrip.cpp.o.provides.build
.PHONY : CMakeFiles/SkullStripping.dir/skullstrip.cpp.o.provides

CMakeFiles/SkullStripping.dir/skullstrip.cpp.o.provides.build: CMakeFiles/SkullStripping.dir/skullstrip.cpp.o

# Object files for target SkullStripping
SkullStripping_OBJECTS = \
"CMakeFiles/SkullStripping.dir/main.cpp.o" \
"CMakeFiles/SkullStripping.dir/mainwindow.cpp.o" \
"CMakeFiles/SkullStripping.dir/moc_mainwindow.cxx.o" \
"CMakeFiles/SkullStripping.dir/skullstrip.cpp.o"

# External object files for target SkullStripping
SkullStripping_EXTERNAL_OBJECTS =

SkullStripping: CMakeFiles/SkullStripping.dir/main.cpp.o
SkullStripping: CMakeFiles/SkullStripping.dir/mainwindow.cpp.o
SkullStripping: CMakeFiles/SkullStripping.dir/moc_mainwindow.cxx.o
SkullStripping: CMakeFiles/SkullStripping.dir/skullstrip.cpp.o
SkullStripping: CMakeFiles/SkullStripping.dir/build.make
SkullStripping: /usr/lib64/libQtGui.so
SkullStripping: /usr/lib64/libQtCore.so
SkullStripping: /usr/local/lib/libitkdouble-conversion-4.4.so.1
SkullStripping: /usr/local/lib/libitksys-4.4.so.1
SkullStripping: /usr/local/lib/libitkvnl_algo-4.4.so.1
SkullStripping: /usr/local/lib/libitkvnl-4.4.so.1
SkullStripping: /usr/local/lib/libitkv3p_netlib-4.4.so.1
SkullStripping: /usr/local/lib/libITKCommon-4.4.so.1
SkullStripping: /usr/local/lib/libitkNetlibSlatec-4.4.so.1
SkullStripping: /usr/local/lib/libITKStatistics-4.4.so.1
SkullStripping: /usr/local/lib/libITKIOImageBase-4.4.so.1
SkullStripping: /usr/local/lib/libITKIOBMP-4.4.so.1
SkullStripping: /usr/local/lib/libITKIOBioRad-4.4.so.1
SkullStripping: /usr/local/lib/libITKEXPAT-4.4.so.1
SkullStripping: /usr/local/lib/libitkopenjpeg-4.4.so.1
SkullStripping: /usr/local/lib/libitkzlib-4.4.so.1
SkullStripping: /usr/local/lib/libitkgdcmDICT-4.4.so.1
SkullStripping: /usr/local/lib/libitkgdcmMSFF-4.4.so.1
SkullStripping: /usr/local/lib/libITKIOGDCM-4.4.so.1
SkullStripping: /usr/local/lib/libITKIOGIPL-4.4.so.1
SkullStripping: /usr/local/lib/libitkjpeg-4.4.so.1
SkullStripping: /usr/local/lib/libITKIOJPEG-4.4.so.1
SkullStripping: /usr/local/lib/libitktiff-4.4.so.1
SkullStripping: /usr/local/lib/libITKIOTIFF-4.4.so.1
SkullStripping: /usr/local/lib/libITKIOLSM-4.4.so.1
SkullStripping: /usr/local/lib/libITKMetaIO-4.4.so.1
SkullStripping: /usr/local/lib/libITKIOMeta-4.4.so.1
SkullStripping: /usr/local/lib/libITKznz-4.4.so.1
SkullStripping: /usr/local/lib/libITKniftiio-4.4.so.1
SkullStripping: /usr/local/lib/libITKIONIFTI-4.4.so.1
SkullStripping: /usr/local/lib/libITKNrrdIO-4.4.so.1
SkullStripping: /usr/local/lib/libITKIONRRD-4.4.so.1
SkullStripping: /usr/local/lib/libitkpng-4.4.so.1
SkullStripping: /usr/local/lib/libITKIOPNG-4.4.so.1
SkullStripping: /usr/local/lib/libITKIOStimulate-4.4.so.1
SkullStripping: /usr/local/lib/libITKIOVTK-4.4.so.1
SkullStripping: /usr/local/lib/libITKMesh-4.4.so.1
SkullStripping: /usr/local/lib/libITKSpatialObjects-4.4.so.1
SkullStripping: /usr/local/lib/libITKPath-4.4.so.1
SkullStripping: /usr/local/lib/libITKLabelMap-4.4.so.1
SkullStripping: /usr/local/lib/libITKQuadEdgeMesh-4.4.so.1
SkullStripping: /usr/local/lib/libITKOptimizers-4.4.so.1
SkullStripping: /usr/local/lib/libITKPolynomials-4.4.so.1
SkullStripping: /usr/local/lib/libITKBiasCorrection-4.4.so.1
SkullStripping: /usr/local/lib/libITKBioCell-4.4.so.1
SkullStripping: /usr/local/lib/libITKDICOMParser-4.4.so.1
SkullStripping: /usr/local/lib/libITKIOXML-4.4.so.1
SkullStripping: /usr/local/lib/libITKIOSpatialObjects-4.4.so.1
SkullStripping: /usr/local/lib/libITKFEM-4.4.so.1
SkullStripping: /usr/local/lib/libITKIOIPL-4.4.so.1
SkullStripping: /usr/local/lib/libITKIOGE-4.4.so.1
SkullStripping: /usr/local/lib/libITKIOSiemens-4.4.so.1
SkullStripping: /usr/local/lib/libITKIOTransformBase-4.4.so.1
SkullStripping: /usr/local/lib/libitkhdf5_cpp-4.4.so.1
SkullStripping: /usr/local/lib/libitkhdf5-4.4.so.1
SkullStripping: /usr/local/lib/libITKIOTransformHDF5-4.4.so.1
SkullStripping: /usr/local/lib/libITKIOTransformInsightLegacy-4.4.so.1
SkullStripping: /usr/local/lib/libITKIOTransformMatlab-4.4.so.1
SkullStripping: /usr/local/lib/libITKKLMRegionGrowing-4.4.so.1
SkullStripping: /usr/local/lib/libITKVTK-4.4.so.1
SkullStripping: /usr/local/lib/libITKWatersheds-4.4.so.1
SkullStripping: /usr/local/lib/libITKDeprecated-4.4.so.1
SkullStripping: /usr/local/lib/libITKgiftiio-4.4.so.1
SkullStripping: /usr/local/lib/libITKIOMesh-4.4.so.1
SkullStripping: /usr/local/lib/libITKIOCSV-4.4.so.1
SkullStripping: /usr/local/lib/libITKIOHDF5-4.4.so.1
SkullStripping: /usr/local/lib/libITKOptimizersv4-4.4.so.1
SkullStripping: /usr/local/lib/libITKReview-4.4.so.1
SkullStripping: /usr/local/lib/libITKVideoCore-4.4.so.1
SkullStripping: /usr/local/lib/libITKVideoIO-4.4.so.1
SkullStripping: /usr/local/lib/libITKIOLSM-4.4.so.1
SkullStripping: /usr/local/lib/libITKDICOMParser-4.4.so.1
SkullStripping: /usr/local/lib/libITKgiftiio-4.4.so.1
SkullStripping: /usr/local/lib/libITKIOBMP-4.4.so.1
SkullStripping: /usr/local/lib/libITKIOBioRad-4.4.so.1
SkullStripping: /usr/local/lib/libITKIOGDCM-4.4.so.1
SkullStripping: /usr/local/lib/libitkgdcmMSFF-4.4.so.1
SkullStripping: /usr/local/lib/libitkopenjpeg-4.4.so.1
SkullStripping: /usr/local/lib/libitkgdcmDICT-4.4.so.1
SkullStripping: /usr/local/lib/libitkgdcmIOD-4.4.so.1
SkullStripping: /usr/local/lib/libitkgdcmDSED-4.4.so.1
SkullStripping: /usr/local/lib/libitkgdcmCommon-4.4.so.1
SkullStripping: /usr/local/lib/libITKIOGIPL-4.4.so.1
SkullStripping: /usr/local/lib/libITKIOJPEG-4.4.so.1
SkullStripping: /usr/local/lib/libITKIOTIFF-4.4.so.1
SkullStripping: /usr/local/lib/libitktiff-4.4.so.1
SkullStripping: /usr/local/lib/libitkjpeg-4.4.so.1
SkullStripping: /usr/local/lib/libITKIOMeta-4.4.so.1
SkullStripping: /usr/local/lib/libITKIONIFTI-4.4.so.1
SkullStripping: /usr/local/lib/libITKniftiio-4.4.so.1
SkullStripping: /usr/local/lib/libITKznz-4.4.so.1
SkullStripping: /usr/local/lib/libITKIONRRD-4.4.so.1
SkullStripping: /usr/local/lib/libITKNrrdIO-4.4.so.1
SkullStripping: /usr/local/lib/libITKIOPNG-4.4.so.1
SkullStripping: /usr/local/lib/libitkpng-4.4.so.1
SkullStripping: /usr/local/lib/libITKIOStimulate-4.4.so.1
SkullStripping: /usr/local/lib/libITKIOVTK-4.4.so.1
SkullStripping: /usr/local/lib/libITKLabelMap-4.4.so.1
SkullStripping: /usr/local/lib/libITKQuadEdgeMesh-4.4.so.1
SkullStripping: /usr/local/lib/libITKBiasCorrection-4.4.so.1
SkullStripping: /usr/local/lib/libITKPolynomials-4.4.so.1
SkullStripping: /usr/local/lib/libITKBioCell-4.4.so.1
SkullStripping: /usr/local/lib/libITKIOSpatialObjects-4.4.so.1
SkullStripping: /usr/local/lib/libITKIOXML-4.4.so.1
SkullStripping: /usr/local/lib/libITKEXPAT-4.4.so.1
SkullStripping: /usr/local/lib/libITKFEM-4.4.so.1
SkullStripping: /usr/local/lib/libITKMetaIO-4.4.so.1
SkullStripping: /usr/local/lib/libITKOptimizers-4.4.so.1
SkullStripping: /usr/local/lib/libITKIOSiemens-4.4.so.1
SkullStripping: /usr/local/lib/libITKIOGE-4.4.so.1
SkullStripping: /usr/local/lib/libITKIOIPL-4.4.so.1
SkullStripping: /usr/local/lib/libITKIOTransformHDF5-4.4.so.1
SkullStripping: /usr/local/lib/libitkhdf5_cpp-4.4.so.1
SkullStripping: /usr/local/lib/libitkhdf5-4.4.so.1
SkullStripping: /usr/local/lib/libitkzlib-4.4.so.1
SkullStripping: /usr/local/lib/libITKIOTransformInsightLegacy-4.4.so.1
SkullStripping: /usr/local/lib/libITKIOTransformMatlab-4.4.so.1
SkullStripping: /usr/local/lib/libITKIOTransformBase-4.4.so.1
SkullStripping: /usr/local/lib/libITKKLMRegionGrowing-4.4.so.1
SkullStripping: /usr/local/lib/libITKVTK-4.4.so.1
SkullStripping: /usr/local/lib/libITKWatersheds-4.4.so.1
SkullStripping: /usr/local/lib/libITKSpatialObjects-4.4.so.1
SkullStripping: /usr/local/lib/libITKMesh-4.4.so.1
SkullStripping: /usr/local/lib/libITKPath-4.4.so.1
SkullStripping: /usr/local/lib/libITKStatistics-4.4.so.1
SkullStripping: /usr/local/lib/libitkNetlibSlatec-4.4.so.1
SkullStripping: /usr/local/lib/libITKIOImageBase-4.4.so.1
SkullStripping: /usr/local/lib/libITKVideoCore-4.4.so.1
SkullStripping: /usr/local/lib/libITKCommon-4.4.so.1
SkullStripping: /usr/local/lib/libitkdouble-conversion-4.4.so.1
SkullStripping: /usr/local/lib/libitksys-4.4.so.1
SkullStripping: /usr/local/lib/libITKVNLInstantiation-4.4.so.1
SkullStripping: /usr/local/lib/libitkvnl_algo-4.4.so.1
SkullStripping: /usr/local/lib/libitkv3p_lsqr-4.4.so.1
SkullStripping: /usr/local/lib/libitkvnl-4.4.so.1
SkullStripping: /usr/local/lib/libitkvcl-4.4.so.1
SkullStripping: /usr/local/lib/libitkv3p_netlib-4.4.so.1
SkullStripping: CMakeFiles/SkullStripping.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable SkullStripping"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/SkullStripping.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/SkullStripping.dir/build: SkullStripping
.PHONY : CMakeFiles/SkullStripping.dir/build

CMakeFiles/SkullStripping.dir/requires: CMakeFiles/SkullStripping.dir/main.cpp.o.requires
CMakeFiles/SkullStripping.dir/requires: CMakeFiles/SkullStripping.dir/mainwindow.cpp.o.requires
CMakeFiles/SkullStripping.dir/requires: CMakeFiles/SkullStripping.dir/moc_mainwindow.cxx.o.requires
CMakeFiles/SkullStripping.dir/requires: CMakeFiles/SkullStripping.dir/skullstrip.cpp.o.requires
.PHONY : CMakeFiles/SkullStripping.dir/requires

CMakeFiles/SkullStripping.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/SkullStripping.dir/cmake_clean.cmake
.PHONY : CMakeFiles/SkullStripping.dir/clean

CMakeFiles/SkullStripping.dir/depend: moc_mainwindow.cxx
CMakeFiles/SkullStripping.dir/depend: ui_mainwindow.h
	cd /home/sci/nfanjat/Documents/Depot/SkullStripping/bin && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/sci/nfanjat/Documents/Depot/SkullStripping/src /home/sci/nfanjat/Documents/Depot/SkullStripping/src /home/sci/nfanjat/Documents/Depot/SkullStripping/bin /home/sci/nfanjat/Documents/Depot/SkullStripping/bin /home/sci/nfanjat/Documents/Depot/SkullStripping/bin/CMakeFiles/SkullStripping.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/SkullStripping.dir/depend

