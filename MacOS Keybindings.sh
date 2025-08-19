#! /bin/sh

## Desktop (Mac specific bindings)
dconf write /org/gnome/desktop/input-sources/xkb-options "['ctrl:swap_lwin_lctl', 'ctrl:swap_rwin_rctl', 'lv3:lalt_switch', 'compose:ralt', 'eurosign:e', 'mod_led:compose', 'numpad:mac']" #Invert CTRL and META, enable Alt GR compose and Alt level 3
## Keybindings (Mac specific bindings)
dconf write /org/gnome/shell/keybindings/toggle-overview "['F3']" #Toggle Workspace overview
dconf write /org/gnome/shell/keybindings/toggle-application-view "['F4']" #Toggle applications Launchpad overview
dconf write /org/gnome/desktop/wm/keybindings/panel-main-menu "['F10']" #Show activities overview
dconf write /org/gnome/desktop/wm/keybindings/show-desktop "['F11']" #Hide applications and show desktop
dconf write /org/gnome/settings-daemon/plugins/media-keys/screenshot "['<Primary><Shift>3']" #Global screenshot
dconf write /org/gnome/settings-daemon/plugins/media-keys/window-screenshot "['<Primary><Shift>4']" #Window screenshot
dconf write /org/gnome/settings-daemon/plugins/media-keys/area-screenshot "['<Primary><Shift>5']" #Area screenshot
dconf write /org/gnome/settings-daemon/plugins/media-keys/screenshot-clip "['<Primary><Shift><Super>3']" #Global screenshot clipboard
dconf write /org/gnome/settings-daemon/plugins/media-keys/window-screenshot-clip "['<Primary><Shift><Super>4']" #Window screenshot clipboard
dconf write /org/gnome/settings-daemon/plugins/media-keys/area-screenshot-clip "['<Primary><Shift><Super>5']" #Area screenshot clipboard
dconf write /org/gnome/desktop/wm/keybindings/toggle-fullscreen "['<Shift>F11']" #Toggle fullscreen
