cat ~/.cache/wal/sequences
set -x XDG_DATA_DIRS "$HOME/.local/share/flatpak/exports/share:/var/lib/flatpak/exports/share:/usr/local/share:/usr/share"
set -x XDG_SESSION_TYPE wayland
set -x XDG_CURRENT_DESKTOP sway
set -x MOZ_ENABLE_WAYLAND 1
set -x QT_QPA_PLATFORM wayland
