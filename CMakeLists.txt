cmake_minimum_required(VERSION 3.15)

project(SimpleTD VERSION 1.0)

# set C standard and export compile commands
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

# define paths
set(INCLUDE_DIR "${CMAKE_SOURCE_DIR}/include")
set(BIN_DIR "${CMAKE_SOURCE_DIR}/bin")

# include header files
include_directories(${INCLUDE_DIR})

# create executable
add_executable(SimpleTD src/main.cpp
                        src/glad/glad.c
                        src/engine/window.cpp
                        src/engine/shader_utils.cpp
                        src/engine/draw_proc.cpp
                        src/engine/vector2d.cpp
                        src/engine/scene.cpp
                        src/engine/object_manager.cpp
                        src/engine/draw_proc_util.cpp
                        src/game/end_scene.cpp
                        src/app/app.cpp
)

# set output directory for the binary
set_target_properties(SimpleTD PROPERTIES 
   RUNTIME_OUTPUT_DIRECTORY ${BIN_DIR}
)

# find glfw
find_package(glfw3 REQUIRED)
target_link_libraries(SimpleTD PRIVATE glfw)

find_package(glm REQUIRED)
target_link_libraries(SimpleTD PRIVATE glm::glm)

if (WIN32)
   target_link_libraries(SimpleTD PRIVATE opengl32)
elseif (APPLE)
       target_link_libraries(SimpleTD PRIVATE "-framework OpenGL" "-framework Cocoa" "-framework IOKit" "-framework CoreVideo")
elseif (UNIX)
   target_link_libraries(SimpleTD PRIVATE GL)
endif()
