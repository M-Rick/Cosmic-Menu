#! /bin/sh

## Keybindings (Mac specific bindings)
gsettings set org.gnome.shell.keybindings toggle-overview ['F3']
gsettings set org.gnome.shell.keybindings toggle-application-view ['F4']
gsettings set org.gnome.desktop.wm.keybindings show-desktop ['F11']
## Desktop (Mac specific bindings)
gsettings set org.gnome.desktop.input-sources sources [('xkb', 'fr+mac')]
gsettings set org.gnome.desktop.input-sources xkb-options ['numpad:mac', 'ctrl:swap_rwin_rctl', 'ctrl:swap_lwin_lctl', 'compose:ralt', 'eurosign:e', 'mod_led:compose', 'lv3:lalt_switch']
#Terminal settings
gsettings set org.gnome.Terminal.Legacy.Keybindings full-screen <Shift>F11

## Enable Nautilus Typeahead Find
sudo add-apt-repository ppa:lubomir-brindza/nautilus-typeahead
gsettings set org.gnome.nautilus.preferences enable-interactive-search true
