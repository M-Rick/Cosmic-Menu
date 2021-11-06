#! /bin/sh

## Desktop (Mac specific bindings)
gsettings set org.gnome.desktop.input-sources sources [('xkb', 'fr+mac')] #Map keyboard to French macOS keyboards
gsettings set org.gnome.desktop.input-sources xkb-options ['ctrl:swap_lwin_lctl', 'ctrl:swap_rwin_rctl', 'lv3:lalt_switch', 'compose:ralt', 'eurosign:e', 'mod_led:compose', 'numpad:mac'] #Invert CTRL and META, enable Alt GR compose and Alt level 3
## Keybindings (Mac specific bindings)
gsettings set org.gnome.shell.keybindings toggle-overview ['F3'] #Toggle Workspace overview
gsettings set org.gnome.shell.keybindings toggle-application-view ['F4'] #Toggle applications Launchpad overview
gsettings set org.gnome.desktop.wm.keybindings panel-main-menu ['F10'] #Show activities overview
gsettings set org.gnome.desktop.wm.keybindings show-desktop ['F11'] #Hide applications and show desktop
gsettings set org.gnome.settings-daemon.plugins.media-keys screenshot ['<Primary><Shift>3'] #Global screenshot
gsettings set org.gnome.settings-daemon.plugins.media-keys window-screenshot ['<Primary><Shift>4'] #Window screenshot
gsettings set org.gnome.settings-daemon.plugins.media-keys area-screenshot ['<Primary><Shift>5'] #Area screenshot
gsettings set org.gnome.settings-daemon.plugins.media-keys screenshot-clip ['<Primary><Shift><Super>3'] #Global screenshot clipboard
gsettings set org.gnome.settings-daemon.plugins.media-keys window-screenshot-clip ['<Primary><Shift><Super>4'] #Window screenshot clipboard
gsettings set org.gnome.settings-daemon.plugins.media-keys area-screenshot-clip ['<Primary><Shift><Super>5'] #Area screenshot clipboard
gsettings set org.gnome.desktop.wm.keybindings toggle-fullscreen ['<Shift>F11'] #Toggle fullscreen
#Terminal settings
gsettings set org.gnome.Terminal.Legacy.Keybindings full-screen <Shift>F11

## Enable Nautilus Typeahead Find
sudo add-apt-repository ppa:lubomir-brindza/nautilus-typeahead
gsettings set org.gnome.nautilus.preferences enable-interactive-search true
