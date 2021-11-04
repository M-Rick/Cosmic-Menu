# Cosmic-Menu
## A global menu for Pop!_OS and Gnome Shell

The Cosmic Menu script will bring a global menu on top of the screen in the Pop!_OS desktop. It is  Gnome Sushi enabled as well.
All previous existing settings will be kept.
The global menu uses Budgie Panel and brings most of the features avaible in Budgie.

This script will install all the requirement for Budgie Panel. The top menu can be customized and other panels can be created.
A new GTK3 CSS script is created in the user profile. Nautilus is modified to bring small icons with tree-view in list view.

LibreOffice gets the Sukapura theme in light mode. 

Don't forget to save all your desktop configuration first with ```dconf dump / > dconf-settings.ini```.

To disable the global menu, just remove the startup desktop file ```sudo rm -f /etc/xdg/autostart/budgie-panel.desktop```

Installation: ```sudo sh 'Cosmic Menu.sh' ```

## macOS keybindings
This script adds macOS keybindings in Pop!_OS and Nautilus.
The keyboard is set to map French macOS keyboards. This can be changed later or the just comment ```#``` the line to keep your settings. To change the language just replace *fr* with your language code.
Control and Command keys are inverted to bring the CTRL shortcuts behaviour back to the Command key.
Alt enables special level 3 characters (æ, Æ, œ, Œ, €, ß, ~, \\, \|, etc).
- \<CMD> (CTRL) \<SHIFT> 3 : Global screen capture.
- \<CMD> (CTRL) \<SHIFT> 4 : Windows screen capture.
- \<CMD> (CTRL) \<SHIFT> 5 : Select zone screen capture.
Exposé features:
- F3 : Toggle Workspace overview
- F4 : Toggle applications Launchpad overview
- F11 : Hide applications and show desktop
- <SHIFT> F11 : Toggle fullscreen

Enjoy!

![Capture d’écran du 2021-11-03 14-45-00](https://user-images.githubusercontent.com/2520948/140293080-99294c1a-1843-43b4-99c5-09eb78b2f857.png)

![Capture d’écran du 2021-11-03 14-52-51](https://user-images.githubusercontent.com/2520948/140293112-2b179aca-0933-4d6f-9eb0-f4d26f2b52b3.png)

![Capture d’écran du 2021-11-04 10-35-10](https://user-images.githubusercontent.com/2520948/140293124-d8a7c59a-7738-4843-8501-1d1ca0bd4a67.png)

![Capture d’écran du 2021-11-04 11-30-33](https://user-images.githubusercontent.com/2520948/140298916-f0c5baf6-0c83-4326-9fcd-4bddd7f483ee.png)


