#! /bin/sh

mkdir budgie
### Cosmic Menu ###
## Download Bugie Panel
sudo apt update
sudo apt autoremove
sudo apt install gnome-shell-extension-autohidetopbar appmenu-gtk-module-common appmenu-gtk2-module appmenu-gtk3-module indicator-appmenu budgie-core budgie-indicator-applet budgie-workspace-overview-applet budgie-applications-menu-applet budgie-app-launcher-applet budgie-applications-menu-applet budgie-indicator-applet budgie-brightness-controller-applet budgie-desktop-view budgie-takeabreak-applet budgie-weathershow-applet budgie-showtime-applet budgie-extras-common budgie-extras-daemon budgie-sntray-plugin gnome-sushi gnome-tweaks- gnome-shell-extensions-

## Hide Top Bar
gnome-extensions enable hidetopbar@mathieu.bidon.ca
echo "[/]
enable-active-window=false
enable-intellihide=true
mouse-sensitive-fullscreen-window=false
mouse-triggers-overview=false
shortcut-toggles=false
show-in-overview=false
" > ~/budgie/hidetopbar
dconf load /org/gnome/shell/extensions/hidetopbar/ < ~/budgie/hidetopbar

## GTK CSS ##
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
    font-family: 'Ubuntu Medium';
    font-size: 14px;
    color: rgba(235, 235, 235, 1);
  }

.-vala-panel-appmenu-private > menuitem > label {
    padding-left: -1px;
    padding-right: -1px;
  }

menu {
    margin: 2px; /* Menu item drop down */
    padding-top: 2px;
    padding-bottom: 2px;
    padding-left: 0px;
    padding-right: 0px;
  }

menu > menuitem:hover {
    background-color: rgba(148, 235, 235, 1); /* Menu item over */
    margin-left: 3px;
    margin-right: 3px;
    border-radius: 6px;
  }

.raven-trigger {
    color: rgba(235, 235, 235, 1);
  }

.raven-trigger:active {
    color: rgba(106, 202, 216, 1);
  }

.category-button:hover {
    color: rgba(106, 202, 216, 1);
  }

.category-button:checked {
    color: rgba(106, 202, 216, 1);
  }

.budgie-popover button:hover {
    color: rgba(106, 202, 216, 1);
  }
"

if [ ! -f "$GTK"/gtk.css ]; then
    echo "$CSS" > $GTK/gtk.css
else
    echo "" >> $GTK/gtk.css
    echo "$CSS" >> $GTK/gtk.css
fi

## Budgie ##
## Settings
mkdir budgie
if [ ! -f "/usr/share/budgie-desktop/layouts/cosmic.layout" ]; then
    echo "[Panels]
Panels=Top Panel

[Top Panel]
Children=Spacer 1;Budgie Menu;Global Menu;Spacer 2;ShowTime;Tray;AppIndicator;Status;Network;Spacer 3;Notifications;Spacer 4;Clock;Spacer 5;Night;Spacer 6;Raven Trigger;User Indicator;Spacer 7;
Position=Top
Size=32
Font=Ubuntu Medium 14

[Spacer 1]
ID=Spacer
Alignment=start

[Budgie Menu]
ID=Budgie Menu
Alignment=start

[Global Menu]
ID=Menu global
Alignment=start

[Spacer 2]
ID=Spacer
Alignment=start

[ShowTime]
ID=ShowTime
Alignment=end

[Tray]
ID=System Tray
Alignment=end

[AppIndicator]
ID=AppIndicator Applet
Alignment=end

[Status]
ID=Status Indicator
Alignment=end

[Network]
ID=Network
Alignment=end

[Spacer 3]
ID=Spacer
Alignment=end

[Notifications]
ID=Notifications
Alignment=end

[Spacer 4]
ID=Spacer
Alignment=end

[Clock]
ID=Clock
Alignment=end

[Spacer 5]
ID=Spacer
Alignment=end
Size=6

[Night]
ID=Night Light
Alignment=end

[Spacer 6]
ID=Spacer
Alignment=end

[Raven Trigger]
ID=Raven Trigger
Alignment=end

[User Indicator]
ID=User Indicator
Alignment=end

[Spacer 7]
ID=Spacer
Alignment=end
" > ~/budgie/cosmic.layout
    sudo mv '~/budgie/cosmic.layout' '/usr/share/budgie-desktop/layouts'
fi

## Autostart Bugie Panel
echo "[Desktop Entry]
Type=Application
Exec=budgie-panel
Hidden=false
NoDisplay=false
X-GNOME-Autostart-enabled=true
Name=Budgie Panel Cosmic Menu
Comment=
" > ~/budgie/budgie-panel.desktop
sudo mv '~/budgie/budgie-panel.desktop' '/etc/xdg/autostart/budgie-panel.desktop'

## Budgie Panel
echo "[/]
layout='cosmic'
migration-level=1
panels=['170ccc04-3b5b-11ec-8df6-677a7a05a053']

[applets/{32213732-3b5b-11ec-8df6-677a7a05a053}]
alignment='start'
name='Spacer'
position=0

[applets/{17221b3a-3b5c-11ec-8df6-677a7a05a053}]
alignment='start'
name='Budgie Menu'
position=1

[applets/{84c5a77e-3b5c-11ec-8df6-677a7a05a053}]
alignment='start'
name='Menu global'
position=2

[applets/{8edff412-3b5c-11ec-8df6-677a7a05a053}]
alignment='start'
name='Spacer'
position=3

[applets/{b39cd716-3b5c-11ec-8df6-677a7a05a053}]
alignment='end'
name='ShowTime'
position=0

[applets/{c8f2a780-3b5c-11ec-8df6-677a7a05a053}]
alignment='end'
name='System Tray'
position=1

[applets/{cef74622-3b5c-11ec-8df6-677a7a05a053}]
alignment='end'
name='AppIndicator Applet'
position=2

[applets/{dbf23544-3b5c-11ec-8df6-677a7a05a053}]
alignment='end'
name='Status Indicator'
position=3

[applets/{702a3b28-3c32-11ec-980a-db4a383fb022}]
alignment='end'
name='Network'
position=4

[applets/{f091d77a-3b5c-11ec-8df6-677a7a05a053}]
alignment='end'
name='Spacer'
position=5

[applets/{f9adb428-3b5c-11ec-8df6-677a7a05a053}]
alignment='end'
name='Notifications'
position=6

[applets/{0c2bf6fa-3b5d-11ec-8df6-677a7a05a053}]
alignment='end'
name='Spacer'
position=7

[applets/{6f5e2ef0-3b5d-11ec-8df6-677a7a05a053}]
alignment='end'
name='Clock'
position=8

[applets/{a632637e-3b5d-11ec-8df6-677a7a05a053}]
alignment='end'
name='Spacer'
position=9

[applets/{b3ed0f5a-3b5d-11ec-8df6-677a7a05a053}]
alignment='end'
name='Night Light'
position=10

[applets/{bdcf731e-3b5d-11ec-8df6-677a7a05a053}]
alignment='end'
name='Spacer'
position=11

[applets/{cf0917e8-3b5d-11ec-8df6-677a7a05a053}]
alignment='end'
name='Raven Trigger'
position=12

[applets/{f37d8d34-3b5d-11ec-8df6-677a7a05a053}]
alignment='end'
name='User Indicator'
position=13

[applets/{fe6a985e-3b5d-11ec-8df6-677a7a05a053}]
alignment='end'
name='Spacer'
position=14

[instance/budgie-menu/{17221b3a-3b5c-11ec-8df6-677a7a05a053}]
menu-icon='/usr/share/icons/Pop/64x64@2x/places/distributor-logo.png'
menu-label='Pop!_OS'

[instance/appmenu/{84c5a77e-3b5c-11ec-8df6-677a7a05a053}]
bold-application-name=true

[instance/spacer/{32213732-3b5b-11ec-8df6-677a7a05a053}]
size=3

[instance/spacer/{8edff412-3b5c-11ec-8df6-677a7a05a053}]
size=2

[instance/spacer/{f091d77a-3b5c-11ec-8df6-677a7a05a053}]
size=3

[instance/spacer/{0c2bf6fa-3b5d-11ec-8df6-677a7a05a053}]
size=1

[instance/spacer/{a632637e-3b5d-11ec-8df6-677a7a05a053}]
size=1

[instance/spacer/{bdcf731e-3b5d-11ec-8df6-677a7a05a053}]
size=1

[instance/spacer/{fe6a985e-3b5d-11ec-8df6-677a7a05a053}]
size=5

[panels/{170ccc04-3b5b-11ec-8df6-677a7a05a053}]
applets=['32213732-3b5b-11ec-8df6-677a7a05a053', '17221b3a-3b5c-11ec-8df6-677a7a05a053', '84c5a77e-3b5c-11ec-8df6-677a7a05a053', '8edff412-3b5c-11ec-8df6-677a7a05a053', 'b39cd716-3b5c-11ec-8df6-677a7a05a053', 'c8f2a780-3b5c-11ec-8df6-677a7a05a053', 'cef74622-3b5c-11ec-8df6-677a7a05a053', 'dbf23544-3b5c-11ec-8df6-677a7a05a053', '702a3b28-3c32-11ec-980a-db4a383fb022', 'f091d77a-3b5c-11ec-8df6-677a7a05a053', 'f9adb428-3b5c-11ec-8df6-677a7a05a053', '0c2bf6fa-3b5d-11ec-8df6-677a7a05a053', '6f5e2ef0-3b5d-11ec-8df6-677a7a05a053', 'a632637e-3b5d-11ec-8df6-677a7a05a053', 'b3ed0f5a-3b5d-11ec-8df6-677a7a05a053', 'bdcf731e-3b5d-11ec-8df6-677a7a05a053', 'cf0917e8-3b5d-11ec-8df6-677a7a05a053', 'f37d8d34-3b5d-11ec-8df6-677a7a05a053', 'fe6a985e-3b5d-11ec-8df6-677a7a05a053']
location='top'
size=32
transparency='none'
" > ~/budgie/panel
dconf reset -f /com/solus-project/budgie-panel/
dconf load /com/solus-project/budgie-panel/ < ~/budgie/panel
# Panel
gsettings set com.solus-project.budgie-panel layout 'cosmic'
gsettings set com.solus-project.budgie-panel builtin-theme false
# Raven
gsettings set com.solus-project.budgie-raven enable-week-numbers true
gsettings set com.solus-project.budgie-raven show-power-strip true
# Appmenu
echo "[/]
enable-powerstrip=true
" > ~/budgie/appmenu
dconf reset -f /org/ubuntubudgie/plugins/budgie-appmenu/
dconf load /org/ubuntubudgie/plugins/budgie-appmenu/ < ~/budgie/appmenu
gsettings set org.ubuntubudgie.plugins.budgie-appmenu enable-powerstrip true
gsettings set org.gnome.settings-daemon.plugins.color night-light-temperature '3500'
# Showtime
echo "[/]
datefont='Ubuntu Medium 30'
timefont='Fira Sans UltraLight 80'
" > ~/budgie/showtime
dconf reset -f /org/ubuntubudgie/plugins/budgie-showtime/
dconf load /org/ubuntubudgie/plugins/budgie-showtime/ < ~/budgie/showtime
gsettings set org.ubuntubudgie.plugins.budgie-showtime allmonitors true
gsettings set org.ubuntubudgie.plugins.budgie-showtime datefont 'Ubuntu Medium 30'
gsettings set org.ubuntubudgie.plugins.budgie-showtime timefont 'Fira Sans UltraLight 80'

## Nautilus Settings ##
gsettings set org.gnome.nautilus.list-view default-zoom-level 'small'
gsettings set org.gnome.nautilus.list-view use-tree-view true
gsettings set org.gnome.nautilus.preferences show-create-link true
gsettings set org.gnome.nautilus.preferences executable-text-activation 'launch'

## LibreOffice
sudo apt install libreoffice-style-sukapura
libreoffice=/usr/share/applications/libreoffice
# libreoffice-startcenter.desktop
if [ -d "$libreoffice"-startcenter.desktop ]; then
sudo sed -i 's/Exec=libreoffice %U/Exec=env GTK_THEME=Pop libreoffice %U/' $libreoffice'-startcenter.desktop'
fi
# libreoffice-calc.desktop
if [ -d "$libreoffice"-calc.desktop ]; then
sudo sed -i 's/Exec=libreoffice --calc %U/Exec=env GTK_THEME=Pop libreoffice --calc %U/' $libreoffice'-calc.desktop'
fi
# libreoffice-draw.desktop
if [ -d "$libreoffice"-draw.desktop ]; then
sudo sed -i 's/Exec=libreoffice --draw %U/Exec=env GTK_THEME=Pop libreoffice --draw %U/' $libreoffice'-draw.desktop'
fi
# libreoffice-impress.desktop
if [ -d "$libreoffice"-impress.desktop ]; then
sudo sed -i 's/Exec=libreoffice --impress %U/Exec=env GTK_THEME=Pop libreoffice --impress %U/' $libreoffice'-impress.desktop'
fi
# libreoffice-math.desktop
if [ -d "$libreoffice"-math.desktop ]; then
sudo sed -i 's/Exec=libreoffice --math %U/Exec=env GTK_THEME=Pop libreoffice --math %U/' $libreoffice'/-math.desktop'
fi
# libreoffice-writer.desktop
if [ -d "$libreoffice"-writer.desktop ]; then
sudo sed -i 's/Exec=libreoffice --writer %U/Exec=env GTK_THEME=Pop libreoffice --writer %U/' $libreoffice'-writer.desktop'
fi
# libreoffice-xsltfilter.desktop
if [ -d "$libreoffice"-xsltfilter.desktop ]; then
sudo sed -i 's/Exec=libreoffice %U/Exec=env GTK_THEME=Pop libreoffice %U/' $libreoffice'-xsltfilter.desktop'
fi

### 3 - Export global dconf settings ###
## Reset desktop
rm -rf budgie
sudo reboot
