set -Ux MOZ_ENABLE_WAYLAND           1
set -Ux QT_QPA_PLATFORM              wayland-egl
set -Ux QT_WAYLAND_FORCE_DPI         physical
set -Ux _JAVA_AWT_WM_NONREPARENTING  1
set -Ux QT_QPA_PLATFORMTHEME         qt6ct
set -Ux QT_STYLE_OVERRIDE            kvantum
set -Ux XDG_CURRENT_DESKTOP          sway
set -Ux VDPAU_DRIVER                 radeonsi
set -Ux LIBVA_DRIVER_NAME            radeonsi
set -Ua SSH_KEYS_TO_AUTOLOAD         (ls ~/.ssh/ | grep id_ | grep -v \\.)
# env --unset=SDL_VIDEODRIVER on steam per game if necessary
set -Ux SDL_VIDEODRIVER              wayland
set -Ux SDL_DYNAMIC_API              /usr/lib/libSDL2-2.0.so
