# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.15

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2019.2.5\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2019.2.5\bin\cmake\win\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\Yann.FANHA-DIAS\Documents\GitHub\Recette-avec-tableau

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\Yann.FANHA-DIAS\Documents\GitHub\Recette-avec-tableau\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/RecetteTableau.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/RecetteTableau.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/RecetteTableau.dir/flags.make

CMakeFiles/RecetteTableau.dir/main.c.obj: CMakeFiles/RecetteTableau.dir/flags.make
CMakeFiles/RecetteTableau.dir/main.c.obj: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Yann.FANHA-DIAS\Documents\GitHub\Recette-avec-tableau\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/RecetteTableau.dir/main.c.obj"
	C:\MinGW\mingw32\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\RecetteTableau.dir\main.c.obj   -c C:\Users\Yann.FANHA-DIAS\Documents\GitHub\Recette-avec-tableau\main.c

CMakeFiles/RecetteTableau.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/RecetteTableau.dir/main.c.i"
	C:\MinGW\mingw32\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\Yann.FANHA-DIAS\Documents\GitHub\Recette-avec-tableau\main.c > CMakeFiles\RecetteTableau.dir\main.c.i

CMakeFiles/RecetteTableau.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/RecetteTableau.dir/main.c.s"
	C:\MinGW\mingw32\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Users\Yann.FANHA-DIAS\Documents\GitHub\Recette-avec-tableau\main.c -o CMakeFiles\RecetteTableau.dir\main.c.s

# Object files for target RecetteTableau
RecetteTableau_OBJECTS = \
"CMakeFiles/RecetteTableau.dir/main.c.obj"

# External object files for target RecetteTableau
RecetteTableau_EXTERNAL_OBJECTS =

RecetteTableau.exe: CMakeFiles/RecetteTableau.dir/main.c.obj
RecetteTableau.exe: CMakeFiles/RecetteTableau.dir/build.make
RecetteTableau.exe: CMakeFiles/RecetteTableau.dir/linklibs.rsp
RecetteTableau.exe: CMakeFiles/RecetteTableau.dir/objects1.rsp
RecetteTableau.exe: CMakeFiles/RecetteTableau.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\Yann.FANHA-DIAS\Documents\GitHub\Recette-avec-tableau\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable RecetteTableau.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\RecetteTableau.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/RecetteTableau.dir/build: RecetteTableau.exe

.PHONY : CMakeFiles/RecetteTableau.dir/build

CMakeFiles/RecetteTableau.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\RecetteTableau.dir\cmake_clean.cmake
.PHONY : CMakeFiles/RecetteTableau.dir/clean

CMakeFiles/RecetteTableau.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\Yann.FANHA-DIAS\Documents\GitHub\Recette-avec-tableau C:\Users\Yann.FANHA-DIAS\Documents\GitHub\Recette-avec-tableau C:\Users\Yann.FANHA-DIAS\Documents\GitHub\Recette-avec-tableau\cmake-build-debug C:\Users\Yann.FANHA-DIAS\Documents\GitHub\Recette-avec-tableau\cmake-build-debug C:\Users\Yann.FANHA-DIAS\Documents\GitHub\Recette-avec-tableau\cmake-build-debug\CMakeFiles\RecetteTableau.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/RecetteTableau.dir/depend

