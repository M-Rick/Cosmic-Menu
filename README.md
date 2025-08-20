# MacUbuntu
## A global menu for Gnome Shell and Pop!_OS (version 22 only)

The Cosmic Menu script will bring a global menu to the top of the screen in the Pop!_OS desktop.
All previous existing settings are backed up.
The global menu uses XFCE4 Panel and brings most of the features available in XFCE4.

This script will install all the requirements for XFCE4 Panel. The top menu can be customized and other panels can be created.
A new GTK3 CSS script is created in the user profile. Nautilus is modified to bring small icons with tree-view in list view.

It only works in X11 because XFCE4 and appmenu aren't supported yet under Wayland.

Don't forget to save all your desktop configuration first with ```dconf dump / > dconf-settings.ini```.

To disable the global menu, just remove the startup desktop file ```sudo rm -f ~/.config/autostart/xfce4-panel.desktop```

Installation: ```sudo sh 'Cosmic Menu.sh' ```

## macOS keybindings
This script adds macOS keybindings in Pop!_OS and Nautilus.
The keyboard is set to map French macOS keyboards. This can be changed later or the just comment ```#``` the line to keep your settings. To change the language just replace *fr* with your language code.
Control and Command keys are inverted to bring the CTRL shortcuts behaviour back to the Command key.
Alt enables special level 3 characters (æ, Æ, œ, Œ, €, ß, ~, \\, \|, etc).
### Screenshots
- \<CMD> (CTRL) \<SHIFT> 3 : Global screenshot.
- \<CMD> (CTRL) \<SHIFT> 4 : Window screenshot.
- \<CMD> (CTRL) \<SHIFT> 5 : Area screenshot.
- \<CTRL> (CMD/META) \<CMD> (CTRL) \<SHIFT> 3 : Global screenshot clipboard.
- \<CTRL> (CMD/META) \<CMD> (CTRL) \<SHIFT> 4 : Window screenshot clipboard.
- \<CTRL> (CMD/META) \<CMD> (CTRL) \<SHIFT> 5 : Area screenshot clipboard. 
 
### Exposé features
- F3 : Toggle Workspace overview
- F4 : Toggle applications Launchpad overview
- F10 : Show Activities overview
- F11 : Hide applications and show desktop
- \<SHIFT> F11 : Toggle fullscreen

Enjoy!

<img width="2048" height="1152" alt="Capture d’écran du 2025-08-20 13-50-19" src="https://github.com/user-attachments/assets/da7c9824-9830-4b90-9dc2-c8d6be8d3e21" />
  
   
<img width="2048" height="1152" alt="Capture d’écran du 2025-08-20 15-20-09" src="https://github.com/user-attachments/assets/f676b427-3a79-4bde-8398-ec55201d1796" />



