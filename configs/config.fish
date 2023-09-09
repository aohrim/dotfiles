set -Ux MOZ_ENABLE_WAYLAND           1
set -Ux SDL_VIDEODRIVER              wayland
set -Ux QT_QPA_PLATFORM              wayland-egl
set -Ux QT_WAYLAND_FORCE_DPI         physical
set -Ux SDL_DYNAMIC_API              /usr/lib/libSDL2-2.0.so
set -Ux _JAVA_AWT_WM_NONREPARENTING  1
set -Ux QT_QPA_PLATFORMTHEME         qt6ct
set -Ux QT_STYLE_OVERRIDE            kvantum
set -Ux XDG_CURRENT_DESKTOP          sway