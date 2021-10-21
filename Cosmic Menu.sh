#!/bin/bash

### Cosmic Menu ###
## Download Gnome Shell extensions
sudo apt install gnome-shell-extension-autohidetopbar 
gnome-extensions enable 

## Download Bugie Panel
sudo apt install budgie-core budgie-indicator-applet budgie-showtime-applet budgie-applications-menu-applet budgie-app-launcher-applet budgie-applications-menu-applet budgie-indicator-applet budgie-brightness-controller-applet budgie-desktop-view budgie-takeabreak-applet budgie-weathershow-applet budgie-showtime-applet ayatana-indicator-application gnome-sushi
## Autostart Bugie Panel
echo "[Desktop Entry]
Type=Application
Exec=budgie-panel
Hidden=false
NoDisplay=false
X-GNOME-Autostart-enabled=true
Name=Budgie Panel Cosmic Menu
Comment=
" > budgie-panel.desktop
sudo mv budgie-panel.desktop /etc/xdg/autostart/budgie-panel.desktop

## Hide Top Bar
echo \
"Wy9dCmVuYWJsZS1hY3RpdmUtd2luZG93PWZhbHNlCmVuYWJsZS1pbnRlbGxpaGlkZT10cnVlCm1vdXNlLXNlbnNpdGl2ZS1mdWxsc2NyZWVuLXdpbmRvdz1mYWxzZQpzaG9ydGN1dC10b2dnbGVzPXRydWUKc2hvdy1pbi1vdmVydmlldz1mYWxzZQo=
" | base64 -d > hidetopbar

dconf dump /org/gnome/shell/extensions/hidetopbar/ < hidetopbar
rm -f hidetopbar

## Configuring Budgie Panel
echo \ "W2J1ZGdpZS1wYW5lbF0KY29uZmlybS1yZW1vdmUtYXBwbGV0PWZhbHNlCm1pZ3JhdGlvbi1sZXZlbD0xCnBhbmVscz1bJzhkOTU3OGQ4LTJmNDYtMTFlYy05NTcwLWQ1MjNkNzk1Y2JmNiddCgpbYnVkZ2llLXBhbmVsL2FwcGxldHMvezA2NTQxMWQ4LTMyODctMTFlYy05ZTFkLTYzZmZlMzE5MjNjNH1dCmFsaWdubWVudD0nZW5kJwpuYW1lPSdVc2VyIEluZGljYXRvcicKcG9zaXRpb249MTIKCltidWRnaWUtcGFuZWwvYXBwbGV0cy97MGUyNDc2ZmEtMzI4Ny0xMWVjLTllMWQtNjNmZmUzMTkyM2M0fV0KYWxpZ25tZW50PSdlbmQnCm5hbWU9J1NwYWNlcicKcG9zaXRpb249MTMKCltidWRnaWUtcGFuZWwvYXBwbGV0cy97NThhOWMxNWUtMzI4Ni0xMWVjLTllMWQtNjNmZmUzMTkyM2M0fV0KYWxpZ25tZW50PSdzdGFydCcKbmFtZT0nU3BhY2VyJwpwb3NpdGlvbj0wCgpbYnVkZ2llLXBhbmVsL2FwcGxldHMvezYyNjgzNjQ0LTMyODYtMTFlYy05ZTFkLTYzZmZlMzE5MjNjNH1dCmFsaWdubWVudD0nc3RhcnQnCm5hbWU9J0J1ZGdpZSBNZW51Jwpwb3NpdGlvbj0xCgpbYnVkZ2llLXBhbmVsL2FwcGxldHMvezc4OGVkN2EyLTMyODYtMTFlYy05ZTFkLTYzZmZlMzE5MjNjNH1dCmFsaWdubWVudD0nc3RhcnQnCm5hbWU9J1NwYWNlcicKcG9zaXRpb249MgoKW2J1ZGdpZS1wYW5lbC9hcHBsZXRzL3s4MmQ4ZTdhMi0zMjg2LTExZWMtOWUxZC02M2ZmZTMxOTIzYzR9XQphbGlnbm1lbnQ9J3N0YXJ0JwpuYW1lPSdNZW51IGdsb2JhbCcKcG9zaXRpb249MwoKW2J1ZGdpZS1wYW5lbC9hcHBsZXRzL3s4YjQyMmE3YS0zMjg2LTExZWMtOWUxZC02M2ZmZTMxOTIzYzR9XQphbGlnbm1lbnQ9J2NlbnRlcicKbmFtZT0nU2hvd1RpbWUnCnBvc2l0aW9uPTAKCltidWRnaWUtcGFuZWwvYXBwbGV0cy97OTAxM2U1MWItMmY0Ni0xMWVjLTk1NzAtZDUyM2Q3OTVjYmY2fV0KYWxpZ25tZW50PSdlbmQnCm5hbWU9J1Zpc3VhbCBTcGFjZScKcG9zaXRpb249MAoKW2J1ZGdpZS1wYW5lbC9hcHBsZXRzL3s5MTc2ODA5ZS0zMjg2LTExZWMtOWUxZC02M2ZmZTMxOTIzYzR9XQphbGlnbm1lbnQ9J2VuZCcKbmFtZT0nU3lzdGVtIFRyYXknCnBvc2l0aW9uPTAKCltidWRnaWUtcGFuZWwvYXBwbGV0cy97OTcwNGY0ZTYtMzI4Ni0xMWVjLTllMWQtNjNmZmUzMTkyM2M0fV0KYWxpZ25tZW50PSdlbmQnCm5hbWU9J0FwcEluZGljYXRvciBBcHBsZXQnCnBvc2l0aW9uPTEKCltidWRnaWUtcGFuZWwvYXBwbGV0cy97OWU3ZjczMGUtMzI4Ni0xMWVjLTllMWQtNjNmZmUzMTkyM2M0fV0KYWxpZ25tZW50PSdlbmQnCm5hbWU9J1N0YXR1cyBJbmRpY2F0b3InCnBvc2l0aW9uPTIKCltidWRnaWUtcGFuZWwvYXBwbGV0cy97YTljZjk3MTYtMzI4Ni0xMWVjLTllMWQtNjNmZmUzMTkyM2M0fV0KYWxpZ25tZW50PSdlbmQnCm5hbWU9J1NwYWNlcicKcG9zaXRpb249MwoKW2J1ZGdpZS1wYW5lbC9hcHBsZXRzL3tiYWQwZjk5Yy0zMjg2LTExZWMtOWUxZC02M2ZmZTMxOTIzYzR9XQphbGlnbm1lbnQ9J2VuZCcKbmFtZT0nTm90aWZpY2F0aW9ucycKcG9zaXRpb249NAoKW2J1ZGdpZS1wYW5lbC9hcHBsZXRzL3tjMWExNjkwMC0zMjg2LTExZWMtOWUxZC02M2ZmZTMxOTIzYzR9XQphbGlnbm1lbnQ9J2VuZCcKbmFtZT0nTmV0d29yaycKcG9zaXRpb249NQoKW2J1ZGdpZS1wYW5lbC9hcHBsZXRzL3tjYWE4ZjRhMC0zMjg2LTExZWMtOWUxZC02M2ZmZTMxOTIzYzR9XQphbGlnbm1lbnQ9J2VuZCcKbmFtZT0nU3BhY2VyJwpwb3NpdGlvbj02CgpbYnVkZ2llLXBhbmVsL2FwcGxldHMve2Q3OTZjYzQ2LTMyODYtMTFlYy05ZTFkLTYzZmZlMzE5MjNjNH1dCmFsaWdubWVudD0nZW5kJwpuYW1lPSdDbG9jaycKcG9zaXRpb249NwoKW2J1ZGdpZS1wYW5lbC9hcHBsZXRzL3tkZjA1NjQ3NC0zMjg2LTExZWMtOWUxZC02M2ZmZTMxOTIzYzR9XQphbGlnbm1lbnQ9J2VuZCcKbmFtZT0nU3BhY2VyJwpwb3NpdGlvbj04CgpbYnVkZ2llLXBhbmVsL2FwcGxldHMve2U2M2I3Njg0LTMyODYtMTFlYy05ZTFkLTYzZmZlMzE5MjNjNH1dCmFsaWdubWVudD0nZW5kJwpuYW1lPSdOaWdodCBMaWdodCcKcG9zaXRpb249OQoKW2J1ZGdpZS1wYW5lbC9hcHBsZXRzL3tmMDc5YWY5NC0zMjg2LTExZWMtOWUxZC02M2ZmZTMxOTIzYzR9XQphbGlnbm1lbnQ9J2VuZCcKbmFtZT0nU3BhY2VyJwpwb3NpdGlvbj0xMAoKW2J1ZGdpZS1wYW5lbC9hcHBsZXRzL3tmZjViZjE4ZS0zMjg2LTExZWMtOWUxZC02M2ZmZTMxOTIzYzR9XQphbGlnbm1lbnQ9J2VuZCcKbmFtZT0nUmF2ZW4gVHJpZ2dlcicKcG9zaXRpb249MTEKCltidWRnaWUtcGFuZWwvaW5zdGFuY2UvYXBwbWVudS97ODJkOGU3YTItMzI4Ni0xMWVjLTllMWQtNjNmZmUzMTkyM2M0fV0KYm9sZC1hcHBsaWNhdGlvbi1uYW1lPXRydWUKCltidWRnaWUtcGFuZWwvaW5zdGFuY2UvYnVkZ2llLW1lbnUvezYyNjgzNjQ0LTMyODYtMTFlYy05ZTFkLTYzZmZlMzE5MjNjNH1dCm1lbnUtaWNvbj0nL3Vzci9zaGFyZS9pY29ucy9Qb3AvMjU2eDI1Ni9wbGFjZXMvZGlzdHJpYnV0b3ItbG9nby1wb3Atb3MucG5nJwptZW51LWxhYmVsPSdQb3AhX09TJwoKW2J1ZGdpZS1wYW5lbC9pbnN0YW5jZS9zcGFjZXIvezU4YTljMTVlLTMyODYtMTFlYy05ZTFkLTYzZmZlMzE5MjNjNH1dCnNpemU9MwoKW2J1ZGdpZS1wYW5lbC9pbnN0YW5jZS9zcGFjZXIve2RmMDU2NDc0LTMyODYtMTFlYy05ZTFkLTYzZmZlMzE5MjNjNH1dCnNpemU9NgoKW2J1ZGdpZS1wYW5lbC9pbnN0YW5jZS9zcGFjZXIve2YwNzlhZjk0LTMyODYtMTFlYy05ZTFkLTYzZmZlMzE5MjNjNH1dCnNpemU9MQoKW2J1ZGdpZS1wYW5lbC9wYW5lbHMvezhkOTU3OGQ4LTJmNDYtMTFlYy05NTcwLWQ1MjNkNzk1Y2JmNn1dCmFwcGxldHM9WydmMDc5YWY5NC0zMjg2LTExZWMtOWUxZC02M2ZmZTMxOTIzYzQnLCAnMDY1NDExZDgtMzI4Ny0xMWVjLTllMWQtNjNmZmUzMTkyM2M0JywgJzllN2Y3MzBlLTMyODYtMTFlYy05ZTFkLTYzZmZlMzE5MjNjNCcsICc5MTc2ODA5ZS0zMjg2LTExZWMtOWUxZC02M2ZmZTMxOTIzYzQnLCAnYmFkMGY5OWMtMzI4Ni0xMWVjLTllMWQtNjNmZmUzMTkyM2M0JywgJzYyNjgzNjQ0LTMyODYtMTFlYy05ZTFkLTYzZmZlMzE5MjNjNCcsICdjMWExNjkwMC0zMjg2LTExZWMtOWUxZC02M2ZmZTMxOTIzYzQnLCAnZGYwNTY0NzQtMzI4Ni0xMWVjLTllMWQtNjNmZmUzMTkyM2M0JywgJzk3MDRmNGU2LTMyODYtMTFlYy05ZTFkLTYzZmZlMzE5MjNjNCcsICdmZjViZjE4ZS0zMjg2LTExZWMtOWUxZC02M2ZmZTMxOTIzYzQnLCAnY2FhOGY0YTAtMzI4Ni0xMWVjLTllMWQtNjNmZmUzMTkyM2M0JywgJzBlMjQ3NmZhLTMyODctMTFlYy05ZTFkLTYzZmZlMzE5MjNjNCcsICc3ODhlZDdhMi0zMjg2LTExZWMtOWUxZC02M2ZmZTMxOTIzYzQnLCAnODJkOGU3YTItMzI4Ni0xMWVjLTllMWQtNjNmZmUzMTkyM2M0JywgJzU4YTljMTVlLTMyODYtMTFlYy05ZTFkLTYzZmZlMzE5MjNjNCcsICdkNzk2Y2M0Ni0zMjg2LTExZWMtOWUxZC02M2ZmZTMxOTIzYzQnLCAnYTljZjk3MTYtMzI4Ni0xMWVjLTllMWQtNjNmZmUzMTkyM2M0JywgJzhiNDIyYTdhLTMyODYtMTFlYy05ZTFkLTYzZmZlMzE5MjNjNCcsICdlNjNiNzY4NC0zMjg2LTExZWMtOWUxZC02M2ZmZTMxOTIzYzQnXQpmb250LW5hbWU9J1VidW50dSAxMycKbG9jYXRpb249J3RvcCcKc2l6ZT0zMgp0aGVtZS1yZWdpb25zPWZhbHNlCnRyYW5zcGFyZW5jeT0nbm9uZScKCltidWRnaWUtcmF2ZW5dCmVuYWJsZS13ZWVrLW51bWJlcnM9dHJ1ZQpzaG93LXBvd2VyLXN0cmlwPXRydWUKCg==
" | base64 -d > budgie-settings

dconf dump /com/solus-project/ < budgie-settings
rm -f budgie-settings

#gsettings set com.solus-project.budgie-panel layout 'pop-os'
gsettings set com.solus-project.budgie-panel builtin-theme true
gsettings set com.solus-project.budgie-panel migration-level '1'

gsettings set com.solus-project.budgie-raven enable-week-numbers true
gsettings set com.solus-project.budgie-raven show-power-strip true

gsettings set org.ubuntubudgie.plugins.budgie-appmenu enable-powerstrip true

gsettings set org.gnome.settings-daemon.plugins.color night-light-temperature '4500'

## Configuring Budgie Showtime
gsettings set org.ubuntubudgie.plugins.budgie-showtime allmonitors true
gsettings set org.ubuntubudgie.plugins.budgie-showtime datefont 'Ubuntu Regular 30'
gsettings set org.ubuntubudgie.plugins.budgie-showtime timefont 'Fira Sans UltraLight 80'

GTK=~/.config/gtk-3.0
if [ ! -d "$GTK" ]; then
    mkdir $GTK
fi

CSS=\
"headerbar entry,
headerbar spinbutton,
headerbar button,
headerbar separator {
    margin-top: 0px; /* same as headerbar side padding for nicer proportions */
    margin-bottom: 0px;
}

headerbar {
    min-height: 24px;
    padding-left: 2px; /* same as childrens vertical margins for nicer proportions */
    padding-right: 2px;
    margin: 0px; /* same as headerbar side padding for nicer proportions */
    padding: 0px;
  }

.budgie-panel {
    background-color: rgba(52, 48, 48, 1);
  }

.-vala-panel-appmenu-private > menuitem > label {
    padding-left: 2px;
    padding-right: 3px;
  }

.-vala-panel-appmenu-private > menuitem:hover {
    background-color: rgba(148, 235, 235, 1); /* Menu item menu bar */
  }

menu {
    margin: 0px; /* Menu item drop down */
    padding-left: 0px;
    padding-right: 0px;
  }

menu > menuitem:hover {
    background-color: rgba(148, 235, 235, 1); /* Menu item over */
  }

.raven {
    background-color: rgba(52, 48, 48, 0.93); /* Panel */
  }

stackswitcher.linked > button {
    background-color: rgba(52, 48, 48, 1); /* Widget buttons */
  }

stackswitcher.linked > button:hover {
    background-color: rgba(52, 48, 48, 0.5); /* Widget buttons over */
  }

stackswitcher.linked > button:checked {
    background-color: rgba(251, 184, 108, 1); /* Widget buttons checked */
  }

.raven-header {
    background-color: rgba(39, 39, 39, 0.8); /* Widget header */
  }

.raven-background {
    background-color: rgba(66, 66, 66, 0.8); /* Widget background */
  }
"

if [ ! -f "$GTK"/gtk.css ]; then
    echo "$CSS" > $GTK/gtk.css
else
    echo "" >> $GTK/gtk.css
    echo "$CSS" >> $GTK/gtk.css
fi

