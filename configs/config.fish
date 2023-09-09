set -x MOZ_ENABLE_WAYLAND           1
set -x SDL_VIDEODRIVER              wayland
set -x QT_QPA_PLATFORM              wayland-egl
set -x QT_WAYLAND_FORCE_DPI         physical
set -x SDL_DYNAMIC_API              /usr/lib/libSDL2-2.0.so
set -x _JAVA_AWT_WM_NONREPARENTING  1
set -x QT_QPA_PLATFORMTHEME         qt6ct