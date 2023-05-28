project(remc2 C CXX)

if (USE_CLANG_TIDY)
    #set(CMAKE_CXX_CLANG_TIDY "clang-tidy;-checks=*")
    #set(CMAKE_CXX_CLANG_TIDY "clang-tidy;-checks=misc-unused-parameters;-fix")
    set(CMAKE_CXX_CLANG_TIDY "clang-tidy;-checks=misc-unused-parameters")
endif ()

################################################################################
# Source groups
################################################################################
set(HEADER_FILES
)
source_group("Header Files" FILES ${HEADER_FILES})

set(SOURCE_FILES
    "remc2.cpp"
)
source_group("Source Files" FILES ${SOURCE_FILES})

set(SOURCE_FILES_ENGINE
    "config.h"
    "engine/ail_sound.h"
    "engine/defs.h"
    "engine/engine_support.cpp"
    "engine/engine_support.h"
    "utilities/Maths.cpp"
    "utilities/Maths.h"
    "engine/Compare.cpp"
    "engine/Compare.h"
    "engine/engine_support_converts.cpp"
    "engine/engine_support_converts.h"
    "engine/Type_D93C0_Bldgprmbuffer.cpp"
    "engine/Type_D93C0_Bldgprmbuffer.h"
    "engine/Type_D94F0_Bldgprmbuffer.cpp"
    "engine/Type_D94F0_Bldgprmbuffer.h"
    "engine/Type_MapScreenPortals_E17CC.cpp"
    "engine/Type_MapScreenPortals_E17CC.h"
    "engine/Type_SecretMapScreenPortals_E2970.cpp"
    "engine/Type_SecretMapScreenPortals_E2970.h"
    "engine/Type_D404C.cpp"
    "engine/Type_D404C.h"
    "engine/Type_WORD_D951C.cpp"
    "engine/Type_WORD_D951C.h"
    "engine/XUnk_D4350.cpp"
    "engine/XUnk_D4350.h"
    "engine/Unk_D4A30.cpp"
    "engine/Unk_D4A30.h"
    "engine/Unk_D47E0.cpp"
    "engine/Unk_D47E0.h"
    "engine/RenderThread.cpp"
    "engine/RenderThread.h"
    "utilities/BitmapIO.cpp"
    "utilities/BitmapIO.h"
    "utilities/DataFileIO.cpp"
    "utilities/DataFileIO.h"
    "engine/read_config.cpp"
    "engine/read_config.h"
    "engine/TextureMaps.cpp"
    "engine/TextureMaps.h"
    "engine/GameRenderOriginal.cpp"
    "engine/GameRenderOriginal.h"
    "engine/GameRenderNG.cpp"
    "engine/GameRenderNG.h"
    "engine/GameRenderHD.cpp"
    "engine/GameRenderHD.h"
    "engine/GameRenderGL.cpp"
    "engine/GameRenderGL.h"
    "engine/GameRenderInterface.h"
    "sub_main.cpp"
    "sub_main.h"
    "engine/ProjectionPolygon.cpp"
    "engine/ProjectionPolygon.h"
    "engine/Sound.cpp"
    "engine/Sound.h"
    "engine/Network.cpp"
    "engine/Network.h"
    "engine/Basic.cpp"
    "engine/Basic.h"
    "engine/Animation.cpp"
    "engine/Animation.h"
    "engine/Terrain.cpp"
    "engine/Terrain.h"
    "engine/sub_main_mouse.h"
    "engine/ViewPort.cpp"
    "engine/ViewPort.h"
    "engine/CommandLineParser.cpp"
    "engine/CommandLineParser.h"
    "engine/MenusAndIntros.cpp"
    "engine/MenusAndIntros.h"
)
source_group("Source Files\\engine" FILES ${SOURCE_FILES_ENGINE})


set(SOURCE_FILES__libs__inih
    "../lib/inih/ini.c"
    "../lib/inih/ini.h"
    "../lib/inih/cpp/INIReader.cpp"
    "../lib/inih/cpp/INIReader.h"
)
source_group("Source Files\\libs\\inih" FILES ${SOURCE_FILES__libs__inih})

set(SOURCE_FILES__libs__findfirst
    "../lib/findfirst/findfirst.c"
    "../lib/findfirst/findfirst.h"
    "../lib/findfirst/spec.c"
    "../lib/findfirst/spec.h"
)
source_group("Source Files\\libs\\findfirst" FILES ${SOURCE_FILES__libs__findfirst})

set(SOURCE_FILES__lib__imgui
    "../lib/imgui/imconfig.h"
    "../lib/imgui/imgui.cpp"
    "../lib/imgui/imgui.h"
    "../lib/imgui/imgui_demo.cpp"
    "../lib/imgui/imgui_draw.cpp"
    "../lib/imgui/imgui_internal.h"
    "../lib/imgui/imgui_tables.cpp"
    "../lib/imgui/imgui_widgets.cpp"
    "../lib/imgui/imstb_rectpack.h"
    "../lib/imgui/imstb_textedit.h"
    "../lib/imgui/imstb_truetype.h"
)
source_group("Source Files\\lib\\imgui" FILES ${SOURCE_FILES__lib__imgui})

set(SOURCE_FILES__lib__imgui__backends
    "../lib/imgui/backends/imgui_impl_sdl2.cpp"
    "../lib/imgui/backends/imgui_impl_sdl2.h"
    "../lib/imgui/backends/imgui_impl_sdlrenderer.cpp"
    "../lib/imgui/backends/imgui_impl_sdlrenderer.h"
)
source_group("Source Files\\lib\\imgui\\backends" FILES ${SOURCE_FILES__lib__imgui__backends})

set(SOURCE_FILES__portability
    "portability/mctypes.h"
    "portability/fcaseopen.cpp"
    "portability/fcaseopen.h"
    "portability/port_net.cpp"
    "portability/port_net.h"
    "portability/port_filesystem.cpp"
    "portability/port_filesystem.h"
    "portability/port_inputs.cpp"
    "portability/port_inputs.h"
    "portability/port_outputs.cpp"
    "portability/port_outputs.h"
    "portability/port_sound_lut.h"
    "portability/port_sdl_sound.cpp"
    "portability/port_sdl_sound.h"
    "portability/port_openal.cpp"
    "portability/port_openal.h"
    "portability/port_sdl_vga_mouse.cpp"
    "portability/port_sdl_vga_mouse.h"
    "portability/port_sdl_joystick.cpp"
    "portability/port_sdl_joystick.h"
	"portability/port_show_periphery.cpp"
    "portability/port_show_periphery.h"
    "portability/port_time.cpp"
    "portability/port_time.h"
    "portability/port_imgui.cpp"
    "portability/port_imgui.h"
    "portability/xmi2mid.cpp"
    "portability/xmi2mid.h"
)
source_group("Source Files\\portability" FILES ${SOURCE_FILES__portability})
set(ALL_FILES
    ${HEADER_FILES}
    ${SOURCE_FILES}
    ${SOURCE_FILES_ENGINE}
    ${SOURCE_FILES__libs__inih}
    ${SOURCE_FILES__portability}
    ${SOURCE_FILES__networklib}
    ${SOURCE_FILES__lib__imgui}
    ${SOURCE_FILES__lib__imgui__backends}
)

################################################################################
# targets
################################################################################
add_library(findfirst ${SOURCE_FILES__libs__findfirst})
add_executable(${PROJECT_NAME} ${ALL_FILES})

install(
    TARGETS ${PROJECT_NAME}
    CONFIGURATIONS Debug;Release;RelWithDebInfo
    RUNTIME DESTINATION bin
    LIBRARY DESTINATION lib
    ARCHIVE DESTINATION lib/static
)
install(
    FILES 
    ${CMAKE_SOURCE_DIR}/assets/fonts/16x16-font.bmp
    ${CMAKE_SOURCE_DIR}/assets/fonts/8x8-font.bmp
    DESTINATION bin/font
)
install(
    FILES 
    ${CMAKE_SOURCE_DIR}/assets/config.ini
    DESTINATION bin
)
install(
    FILES
    ${CMAKE_SOURCE_DIR}/assets/biggraphics.tar.xz
    DESTINATION bin
)

set(ROOT_NAMESPACE remc2)


################################################################################
# Linux settings
################################################################################
if (UNIX)
    target_include_directories(${PROJECT_NAME} PUBLIC
        "${CMAKE_SOURCE_DIR}/src"
        "${CMAKE_SOURCE_DIR}/src/portability"
        "${CMAKE_SOURCE_DIR}/src/engine"
        "${CMAKE_SOURCE_DIR}/lib/inih"
        "${CMAKE_SOURCE_DIR}/lib/findfirst"
        "${CMAKE_SOURCE_DIR}/lib/imgui"
        "${CMAKE_SOURCE_DIR}/lib/imgui/backends"
    )
    #target_compile_definitions(${PROJECT_NAME} PRIVATE
    #)
    #target_compile_options(${PROJECT_NAME} PRIVATE
    #)
    target_link_libraries(${PROJECT_NAME} PUBLIC 
        SDL2::Main
        SDL2::Mixer
        ${PNG_LIBRARY}
        findfirst
        Boost::system
        spdlog
        fmt
        openal
    )
    target_link_directories(${PROJECT_NAME} PUBLIC
    )
    target_compile_definitions(${PROJECT_NAME} PUBLIC
        "$<$<CONFIG:DEBUG>:_DEBUG>"
    )
endif ()


# editor
if (EDITOR)
    add_subdirectory(editor)
endif ()


if (UNIX)
    if (USE_SANITIZERS)
        set(SANITIZER_OPTIONS
            -fsanitize=address
            -fsanitize=pointer-compare
            -fsanitize=pointer-subtract
            -fsanitize=leak
            -fsanitize=undefined
            -static-libasan
            -static-liblsan
            -static-libubsan
        )
        target_link_options(remc2 PRIVATE ${SANITIZER_OPTIONS})
        if (EDITOR)
            target_link_options(remc2editor PRIVATE ${SANITIZER_OPTIONS})
        endif ()
    endif ()
endif ()
