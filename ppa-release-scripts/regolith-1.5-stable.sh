#!/bin/bash

# Upgrading uniform arc-icon-theme from null to 20161122-1 in STABLE
copy-package --from=~regolith-linux/ubuntu/stable --from-suite=bionic --to=~regolith-linux/ubuntu/stable --to-suite=focal -b -y arc-icon-theme
# Upgrading uniform ayu-theme from null to 0.2.0-1ubuntu1~ppa1 in STABLE
copy-package --from=~regolith-linux/ubuntu/stable --from-suite=bionic --to=~regolith-linux/ubuntu/stable --to-suite=groovy -b -y ayu-theme
# Upgrading uniform cahuella from null to 1.0.2-1 in STABLE
copy-package --from=~regolith-linux/ubuntu/stable --from-suite=bionic --to=~regolith-linux/ubuntu/stable --to-suite=groovy -b -y cahuella
# Upgrading uniform compton from null to 7.4-0ubuntu1~ppa2~bionic3 in STABLE
copy-package --from=~regolith-linux/ubuntu/stable --from-suite=bionic --to=~regolith-linux/ubuntu/stable --to-suite=groovy -b -y compton
# Upgrading non-uniform dracula-gtk (UNSTABLE -> STABLE) from null to 1.0.1-1
copy-package --from=~regolith-linux/ubuntu/unstable --from-suite=bionic --to=~regolith-linux/ubuntu/stable --to-suite=bionic -b -y dracula-gtk
# Upgrading uniform fonts-jetbrains-mono from null to 1.0.1-1regolith1 in STABLE
copy-package --from=~regolith-linux/ubuntu/stable --from-suite=bionic --to=~regolith-linux/ubuntu/stable --to-suite=groovy -b -y fonts-jetbrains-mono
# Upgrading fonts-materialdesignicons-webfont (UNSTABLE -> STABLE) from null to 1.6.50-3regolith3.
copy-package --from=~regolith-linux/ubuntu/unstable --from-suite=bionic --to=~regolith-linux/ubuntu/stable --to-suite=bionic -b -y fonts-materialdesignicons-webfont
# Upgrading uniform fonts-source-code-pro-ttf from null to 1.010-0ubuntu1 in STABLE
copy-package --from=~regolith-linux/ubuntu/stable --from-suite=bionic --to=~regolith-linux/ubuntu/stable --to-suite=groovy -b -y fonts-source-code-pro-ttf
# Upgrading non-uniform gruvbox-gtk (UNSTABLE -> STABLE) from null to 1.0.1-1
copy-package --from=~regolith-linux/ubuntu/unstable --from-suite=bionic --to=~regolith-linux/ubuntu/stable --to-suite=bionic -b -y gruvbox-gtk
# Upgrading non-uniform i3-gaps-wm (UNSTABLE -> STABLE) from null to 4.18.2-1~regolith2
copy-package --from=~regolith-linux/ubuntu/unstable --from-suite=bionic --to=~regolith-linux/ubuntu/stable --to-suite=bionic -b -y i3-gaps-wm
# Upgrading uniform i3-snapshot from null to 1.0-1ubuntu1~ppa1 in STABLE
copy-package --from=~regolith-linux/ubuntu/stable --from-suite=bionic --to=~regolith-linux/ubuntu/stable --to-suite=groovy -b -y i3-snapshot
# Upgrading uniform i3ipc-python from null to 2.1.1-1ubuntu1~ppa6 in STABLE
copy-package --from=~regolith-linux/ubuntu/stable --from-suite=bionic --to=~regolith-linux/ubuntu/stable --to-suite=groovy -b -y i3ipc-python
# Upgrading uniform i3xrocks from null to 1.3.4-1 in STABLE
copy-package --from=~regolith-linux/ubuntu/stable --from-suite=bionic --to=~regolith-linux/ubuntu/stable --to-suite=groovy -b -y i3xrocks
# Upgrading uniform moka-icon-theme from null to 5.4.523-201905300105~daily~ubuntu19.04.1 in STABLE
copy-package --from=~regolith-linux/ubuntu/stable --from-suite=bionic --to=~regolith-linux/ubuntu/stable --to-suite=groovy -b -y moka-icon-theme
# Upgrading uniform nordic from null to 1.6.5-1ubuntu1ppa1 in STABLE
copy-package --from=~regolith-linux/ubuntu/stable --from-suite=bionic --to=~regolith-linux/ubuntu/stable --to-suite=groovy -b -y nordic
# Upgrading uniform paper-icon-theme from null to 1.5.723-201905252133~daily~ubuntu19.04.1 in STABLE
copy-package --from=~regolith-linux/ubuntu/stable --from-suite=bionic --to=~regolith-linux/ubuntu/stable --to-suite=groovy -b -y paper-icon-theme
# Upgrading uniform picom from null to 8-1~1.gbp353272ubuntu1 in STABLE
copy-package --from=~regolith-linux/ubuntu/stable --from-suite=bionic --to=~regolith-linux/ubuntu/stable --to-suite=eoan -b -y picom
# Upgrading plano-theme (UNSTABLE -> STABLE) from null to 3.36-1-1regolith1.
copy-package --from=~regolith-linux/ubuntu/unstable --from-suite=bionic --to=~regolith-linux/ubuntu/stable --to-suite=bionic -b -y plano-theme
# Upgrading uniform playerctl from null to 2.0.2-1ubuntu1~ppa2 in STABLE
copy-package --from=~regolith-linux/ubuntu/stable --from-suite=bionic --to=~regolith-linux/ubuntu/stable --to-suite=groovy -b -y playerctl
# Upgrading uniform plymouth-theme-regolith from null to 1.0.3-1 in STABLE
copy-package --from=~regolith-linux/ubuntu/stable --from-suite=bionic --to=~regolith-linux/ubuntu/stable --to-suite=groovy -b -y plymouth-theme-regolith
# Upgrading pop-fonts (UNSTABLE -> STABLE) from null to 1.0.3~1555617065~18.04~a86eb73.
copy-package --from=~regolith-linux/ubuntu/unstable --from-suite=bionic --to=~regolith-linux/ubuntu/stable --to-suite=bionic -b -y pop-fonts
# Upgrading pop-gtk-theme (UNSTABLE -> STABLE) from null to 4.1.4~1560290633~18.04~f75e86a.
copy-package --from=~regolith-linux/ubuntu/unstable --from-suite=bionic --to=~regolith-linux/ubuntu/stable --to-suite=bionic -b -y pop-gtk-theme
# Upgrading pop-icon-theme (UNSTABLE -> STABLE) from null to 1.4.0~1565992228~18.04~2bac292.
copy-package --from=~regolith-linux/ubuntu/unstable --from-suite=bionic --to=~regolith-linux/ubuntu/stable --to-suite=bionic -b -y pop-icon-theme
# Upgrading uniform python3-i3ipc from null to 2.1.1-1ubuntu1~ppa7 in STABLE
copy-package --from=~regolith-linux/ubuntu/stable --from-suite=bionic --to=~regolith-linux/ubuntu/stable --to-suite=groovy -b -y python3-i3ipc
# Upgrading non-uniform regolith-compositor-compton-glx (UNSTABLE -> STABLE) from null to 1.1.0-1
copy-package --from=~regolith-linux/ubuntu/unstable --from-suite=bionic --to=~regolith-linux/ubuntu/stable --to-suite=bionic -b -y regolith-compositor-compton-glx
# Upgrading uniform regolith-compositor-none from null to 1.0.3-1 in STABLE
copy-package --from=~regolith-linux/ubuntu/stable --from-suite=bionic --to=~regolith-linux/ubuntu/stable --to-suite=groovy -b -y regolith-compositor-none
# Upgrading non-uniform regolith-compositor-picom-glx (UNSTABLE -> STABLE) from null to 1.1.1-1
copy-package --from=~regolith-linux/ubuntu/unstable --from-suite=bionic --to=~regolith-linux/ubuntu/stable --to-suite=bionic -b -y regolith-compositor-picom-glx
# Upgrading non-uniform regolith-compositor-xcompmgr (UNSTABLE -> STABLE) from null to 1.2.0-1
copy-package --from=~regolith-linux/ubuntu/unstable --from-suite=bionic --to=~regolith-linux/ubuntu/stable --to-suite=bionic -b -y regolith-compositor-xcompmgr
# Upgrading non-uniform regolith-default-settings (UNSTABLE -> STABLE) from null to 1.0.1-1focal1
copy-package --from=~regolith-linux/ubuntu/unstable --from-suite=bionic --to=~regolith-linux/ubuntu/stable --to-suite=bionic -b -y regolith-default-settings
# Upgrading non-uniform regolith-desktop (UNSTABLE -> STABLE) from null to 2.82-1groovy
copy-package --from=~regolith-linux/ubuntu/unstable --from-suite=bionic --to=~regolith-linux/ubuntu/stable --to-suite=bionic -b -y regolith-desktop
# Upgrading uniform regolith-ftue from null to 1.0.11-1 in STABLE
copy-package --from=~regolith-linux/ubuntu/stable --from-suite=bionic --to=~regolith-linux/ubuntu/stable --to-suite=eoan -b -y regolith-ftue
# Upgrading uniform regolith-gdm3-theme from null to 2.0.0-1ubuntu1~ppa1 in STABLE
copy-package --from=~regolith-linux/ubuntu/stable --from-suite=bionic --to=~regolith-linux/ubuntu/stable --to-suite=groovy -b -y regolith-gdm3-theme
# Upgrading uniform regolith-gnome-flashback from null to 2.6.2-1 in STABLE
copy-package --from=~regolith-linux/ubuntu/stable --from-suite=bionic --to=~regolith-linux/ubuntu/stable --to-suite=eoan -b -y regolith-gnome-flashback
# Upgrading non-uniform regolith-i3-gaps-config (UNSTABLE -> STABLE) from null to 2.8.0-1
copy-package --from=~regolith-linux/ubuntu/unstable --from-suite=bionic --to=~regolith-linux/ubuntu/stable --to-suite=bionic -b -y regolith-i3-gaps-config
# Upgrading non-uniform regolith-i3xrocks-config (UNSTABLE -> STABLE) from null to 3.2.6-1ubuntu2
copy-package --from=~regolith-linux/ubuntu/unstable --from-suite=bionic --to=~regolith-linux/ubuntu/stable --to-suite=bionic -b -y regolith-i3xrocks-config
# Upgrading uniform regolith-lightdm-config from null to 1.0.6-1 in STABLE
copy-package --from=~regolith-linux/ubuntu/stable --from-suite=bionic --to=~regolith-linux/ubuntu/stable --to-suite=groovy -b -y regolith-lightdm-config
# Upgrading non-uniform regolith-rofi-config (UNSTABLE -> STABLE) from null to 1.3.1-1
copy-package --from=~regolith-linux/ubuntu/unstable --from-suite=bionic --to=~regolith-linux/ubuntu/stable --to-suite=bionic -b -y regolith-rofi-config
# Upgrading non-uniform regolith-rofication (UNSTABLE -> STABLE) from null to 1.2.3-1
copy-package --from=~regolith-linux/ubuntu/unstable --from-suite=bionic --to=~regolith-linux/ubuntu/stable --to-suite=bionic -b -y regolith-rofication
# Upgrading uniform regolith-st from null to 0.8.2-1ubuntu20ppa5 in STABLE
copy-package --from=~regolith-linux/ubuntu/stable --from-suite=bionic --to=~regolith-linux/ubuntu/stable --to-suite=groovy -b -y regolith-st
# Upgrading non-uniform regolith-styles (UNSTABLE -> STABLE) from 2.4.24-1 to 2.6.13-1ubuntu2
copy-package --from=~regolith-linux/ubuntu/unstable --from-suite=bionic --to=~regolith-linux/ubuntu/stable --to-suite=bionic -b -y regolith-styles
# Upgrading regolith-system (UNSTABLE -> STABLE) from null to 1.4.0.4-1.
copy-package --from=~regolith-linux/ubuntu/unstable --from-suite=focal --to=~regolith-linux/ubuntu/stable --to-suite=focal -b -y regolith-system
# Upgrading regolith-unclutter-xfixes (UNSTABLE -> STABLE) from null to 1.5-2.
copy-package --from=~regolith-linux/ubuntu/unstable --from-suite=bionic --to=~regolith-linux/ubuntu/stable --to-suite=bionic -b -y regolith-unclutter-xfixes
# Upgrading non-uniform remontoire (UNSTABLE -> STABLE) from null to 1.4.0-1
copy-package --from=~regolith-linux/ubuntu/unstable --from-suite=bionic --to=~regolith-linux/ubuntu/stable --to-suite=bionic -b -y remontoire
# Upgrading uniform rofi from null to 1.5.4-1~ubuntu18.04 in STABLE
copy-package --from=~regolith-linux/ubuntu/stable --from-suite=bionic --to=~regolith-linux/ubuntu/stable --to-suite=groovy -b -y rofi
# Upgrading uniform solarc-theme from null to 800c997-1 in STABLE
copy-package --from=~regolith-linux/ubuntu/stable --from-suite=bionic --to=~regolith-linux/ubuntu/stable --to-suite=groovy -b -y solarc-theme
# Upgrading td-cli (UNSTABLE -> STABLE) from null to 1.2.4-7.
copy-package --from=~regolith-linux/ubuntu/unstable --from-suite=bionic --to=~regolith-linux/ubuntu/stable --to-suite=bionic -b -y td-cli
# Upgrading uniform ubiquity-slideshow-ubuntu from null to 138.5-ubuntu1~regolith1 in STABLE
copy-package --from=~regolith-linux/ubuntu/stable --from-suite=bionic --to=~regolith-linux/ubuntu/stable --to-suite=groovy -b -y ubiquity-slideshow-ubuntu
# Upgrading uniform unclutter-xfixes from null to 1.5-0ubuntu0~ppa2 in STABLE
copy-package --from=~regolith-linux/ubuntu/stable --from-suite=bionic --to=~regolith-linux/ubuntu/stable --to-suite=groovy -b -y unclutter-xfixes
# Upgrading xrescat (UNSTABLE -> STABLE) from null to 1.2.1-1.
copy-package --from=~regolith-linux/ubuntu/unstable --from-suite=bionic --to=~regolith-linux/ubuntu/stable --to-suite=bionic -b -y xrescat
sleep 2000
# Upgrading non-uniform dracula-gtk (UNSTABLE -> STABLE) from null to 1.0.1-1
copy-package --from=~regolith-linux/ubuntu/unstable --from-suite=eoan --to=~regolith-linux/ubuntu/stable --to-suite=eoan -b -y dracula-gtk
# Upgrading uniform fonts-materialdesignicons-webfont from null to 1.6.50-3regolith3 in STABLE
copy-package --from=~regolith-linux/ubuntu/stable --from-suite=bionic --to=~regolith-linux/ubuntu/stable --to-suite=focal -b -y fonts-materialdesignicons-webfont
# Upgrading non-uniform gruvbox-gtk (UNSTABLE -> STABLE) from null to 1.0.1-1
copy-package --from=~regolith-linux/ubuntu/unstable --from-suite=eoan --to=~regolith-linux/ubuntu/stable --to-suite=eoan -b -y gruvbox-gtk
# Upgrading non-uniform i3-gaps-wm (UNSTABLE -> STABLE) from null to 4.18.2-1~regolith2
copy-package --from=~regolith-linux/ubuntu/unstable --from-suite=eoan --to=~regolith-linux/ubuntu/stable --to-suite=eoan -b -y i3-gaps-wm
# Upgrading uniform picom from null to 8-1~1.gbp353272ubuntu1 in STABLE
copy-package --from=~regolith-linux/ubuntu/stable --from-suite=bionic --to=~regolith-linux/ubuntu/stable --to-suite=focal -b -y picom
# Upgrading uniform plano-theme from null to 3.36-1-1regolith1 in STABLE
copy-package --from=~regolith-linux/ubuntu/stable --from-suite=bionic --to=~regolith-linux/ubuntu/stable --to-suite=focal -b -y plano-theme
# Upgrading uniform pop-fonts from null to 1.0.3~1555617065~18.04~a86eb73 in STABLE
copy-package --from=~regolith-linux/ubuntu/stable --from-suite=bionic --to=~regolith-linux/ubuntu/stable --to-suite=focal -b -y pop-fonts
# Upgrading uniform pop-gtk-theme from null to 4.1.4~1560290633~18.04~f75e86a in STABLE
copy-package --from=~regolith-linux/ubuntu/stable --from-suite=bionic --to=~regolith-linux/ubuntu/stable --to-suite=focal -b -y pop-gtk-theme
# Upgrading uniform pop-icon-theme from null to 1.4.0~1565992228~18.04~2bac292 in STABLE
copy-package --from=~regolith-linux/ubuntu/stable --from-suite=bionic --to=~regolith-linux/ubuntu/stable --to-suite=focal -b -y pop-icon-theme
# Upgrading non-uniform regolith-compositor-compton-glx (UNSTABLE -> STABLE) from null to 1.1.0-1
copy-package --from=~regolith-linux/ubuntu/unstable --from-suite=eoan --to=~regolith-linux/ubuntu/stable --to-suite=eoan -b -y regolith-compositor-compton-glx
# Upgrading non-uniform regolith-compositor-picom-glx (UNSTABLE -> STABLE) from null to 1.1.1-1
copy-package --from=~regolith-linux/ubuntu/unstable --from-suite=eoan --to=~regolith-linux/ubuntu/stable --to-suite=eoan -b -y regolith-compositor-picom-glx
# Upgrading non-uniform regolith-compositor-xcompmgr (UNSTABLE -> STABLE) from null to 1.2.0-1
copy-package --from=~regolith-linux/ubuntu/unstable --from-suite=eoan --to=~regolith-linux/ubuntu/stable --to-suite=eoan -b -y regolith-compositor-xcompmgr
# Upgrading non-uniform regolith-default-settings (UNSTABLE -> STABLE) from null to 1.0.1-1focal1
copy-package --from=~regolith-linux/ubuntu/unstable --from-suite=eoan --to=~regolith-linux/ubuntu/stable --to-suite=eoan -b -y regolith-default-settings
# Upgrading non-uniform regolith-desktop (UNSTABLE -> STABLE) from null to 2.82-1groovy
copy-package --from=~regolith-linux/ubuntu/unstable --from-suite=eoan --to=~regolith-linux/ubuntu/stable --to-suite=eoan -b -y regolith-desktop
# Upgrading uniform regolith-ftue from null to 1.0.11-1 in STABLE
copy-package --from=~regolith-linux/ubuntu/stable --from-suite=bionic --to=~regolith-linux/ubuntu/stable --to-suite=focal -b -y regolith-ftue
# Upgrading uniform regolith-gnome-flashback from null to 2.6.2-1 in STABLE
copy-package --from=~regolith-linux/ubuntu/stable --from-suite=bionic --to=~regolith-linux/ubuntu/stable --to-suite=focal -b -y regolith-gnome-flashback
# Upgrading non-uniform regolith-i3-gaps-config (UNSTABLE -> STABLE) from null to 2.8.0-1
copy-package --from=~regolith-linux/ubuntu/unstable --from-suite=eoan --to=~regolith-linux/ubuntu/stable --to-suite=eoan -b -y regolith-i3-gaps-config
# Upgrading non-uniform regolith-i3xrocks-config (UNSTABLE -> STABLE) from null to 3.2.6-1ubuntu2
copy-package --from=~regolith-linux/ubuntu/unstable --from-suite=eoan --to=~regolith-linux/ubuntu/stable --to-suite=eoan -b -y regolith-i3xrocks-config
# Upgrading non-uniform regolith-rofi-config (UNSTABLE -> STABLE) from null to 1.3.1-1
copy-package --from=~regolith-linux/ubuntu/unstable --from-suite=eoan --to=~regolith-linux/ubuntu/stable --to-suite=eoan -b -y regolith-rofi-config
# Upgrading non-uniform regolith-rofication (UNSTABLE -> STABLE) from null to 1.2.3-1
copy-package --from=~regolith-linux/ubuntu/unstable --from-suite=eoan --to=~regolith-linux/ubuntu/stable --to-suite=eoan -b -y regolith-rofication
# Upgrading non-uniform regolith-styles (UNSTABLE -> STABLE) from 2.4.24-1 to 2.6.13-1ubuntu2
copy-package --from=~regolith-linux/ubuntu/unstable --from-suite=eoan --to=~regolith-linux/ubuntu/stable --to-suite=eoan -b -y regolith-styles
# Upgrading uniform regolith-system from null to 1.4.0.4-1 in STABLE
copy-package --from=~regolith-linux/ubuntu/stable --from-suite=focal --to=~regolith-linux/ubuntu/stable --to-suite=groovy -b -y regolith-system
# Upgrading uniform regolith-unclutter-xfixes from null to 1.5-2 in STABLE
copy-package --from=~regolith-linux/ubuntu/stable --from-suite=bionic --to=~regolith-linux/ubuntu/stable --to-suite=focal -b -y regolith-unclutter-xfixes
# Upgrading non-uniform remontoire (UNSTABLE -> STABLE) from null to 1.4.0-1
copy-package --from=~regolith-linux/ubuntu/unstable --from-suite=eoan --to=~regolith-linux/ubuntu/stable --to-suite=eoan -b -y remontoire
# Upgrading uniform td-cli from null to 1.2.4-7 in STABLE
copy-package --from=~regolith-linux/ubuntu/stable --from-suite=bionic --to=~regolith-linux/ubuntu/stable --to-suite=focal -b -y td-cli
# Upgrading uniform xrescat from null to 1.2.1-1 in STABLE
copy-package --from=~regolith-linux/ubuntu/stable --from-suite=bionic --to=~regolith-linux/ubuntu/stable --to-suite=eoan -b -y xrescat
sleep 2000
# Upgrading non-uniform dracula-gtk (UNSTABLE -> STABLE) from null to 1.0.1-1
copy-package --from=~regolith-linux/ubuntu/unstable --from-suite=focal --to=~regolith-linux/ubuntu/stable --to-suite=focal -b -y dracula-gtk
# Upgrading uniform fonts-materialdesignicons-webfont from null to 1.6.50-3regolith3 in STABLE
copy-package --from=~regolith-linux/ubuntu/stable --from-suite=bionic --to=~regolith-linux/ubuntu/stable --to-suite=groovy -b -y fonts-materialdesignicons-webfont
# Upgrading non-uniform gruvbox-gtk (UNSTABLE -> STABLE) from null to 1.0.1-1
copy-package --from=~regolith-linux/ubuntu/unstable --from-suite=focal --to=~regolith-linux/ubuntu/stable --to-suite=focal -b -y gruvbox-gtk
# Upgrading non-uniform i3-gaps-wm (UNSTABLE -> STABLE) from null to 4.18.2-1~regolith2
copy-package --from=~regolith-linux/ubuntu/unstable --from-suite=focal --to=~regolith-linux/ubuntu/stable --to-suite=focal -b -y i3-gaps-wm
# Upgrading uniform picom from null to 8-1~1.gbp353272ubuntu1 in STABLE
copy-package --from=~regolith-linux/ubuntu/stable --from-suite=bionic --to=~regolith-linux/ubuntu/stable --to-suite=groovy -b -y picom
# Upgrading uniform plano-theme from null to 3.36-1-1regolith1 in STABLE
copy-package --from=~regolith-linux/ubuntu/stable --from-suite=bionic --to=~regolith-linux/ubuntu/stable --to-suite=groovy -b -y plano-theme
# Upgrading uniform pop-fonts from null to 1.0.3~1555617065~18.04~a86eb73 in STABLE
copy-package --from=~regolith-linux/ubuntu/stable --from-suite=bionic --to=~regolith-linux/ubuntu/stable --to-suite=groovy -b -y pop-fonts
# Upgrading uniform pop-gtk-theme from null to 4.1.4~1560290633~18.04~f75e86a in STABLE
copy-package --from=~regolith-linux/ubuntu/stable --from-suite=bionic --to=~regolith-linux/ubuntu/stable --to-suite=groovy -b -y pop-gtk-theme
# Upgrading uniform pop-icon-theme from null to 1.4.0~1565992228~18.04~2bac292 in STABLE
copy-package --from=~regolith-linux/ubuntu/stable --from-suite=bionic --to=~regolith-linux/ubuntu/stable --to-suite=groovy -b -y pop-icon-theme
# Upgrading non-uniform regolith-compositor-compton-glx (UNSTABLE -> STABLE) from null to 1.1.0-1
copy-package --from=~regolith-linux/ubuntu/unstable --from-suite=focal --to=~regolith-linux/ubuntu/stable --to-suite=focal -b -y regolith-compositor-compton-glx
# Upgrading non-uniform regolith-compositor-picom-glx (UNSTABLE -> STABLE) from null to 1.1.1-1
copy-package --from=~regolith-linux/ubuntu/unstable --from-suite=focal --to=~regolith-linux/ubuntu/stable --to-suite=focal -b -y regolith-compositor-picom-glx
# Upgrading non-uniform regolith-compositor-xcompmgr (UNSTABLE -> STABLE) from null to 1.2.0-1
copy-package --from=~regolith-linux/ubuntu/unstable --from-suite=focal --to=~regolith-linux/ubuntu/stable --to-suite=focal -b -y regolith-compositor-xcompmgr
# Upgrading non-uniform regolith-default-settings (UNSTABLE -> STABLE) from null to 1.0.1-1focal1
copy-package --from=~regolith-linux/ubuntu/unstable --from-suite=focal --to=~regolith-linux/ubuntu/stable --to-suite=focal -b -y regolith-default-settings
# Upgrading non-uniform regolith-desktop (UNSTABLE -> STABLE) from null to 2.82-1groovy
copy-package --from=~regolith-linux/ubuntu/unstable --from-suite=focal --to=~regolith-linux/ubuntu/stable --to-suite=focal -b -y regolith-desktop
# Upgrading uniform regolith-ftue from null to 1.0.11-1 in STABLE
copy-package --from=~regolith-linux/ubuntu/stable --from-suite=bionic --to=~regolith-linux/ubuntu/stable --to-suite=groovy -b -y regolith-ftue
# Upgrading uniform regolith-gnome-flashback from null to 2.6.2-1 in STABLE
copy-package --from=~regolith-linux/ubuntu/stable --from-suite=bionic --to=~regolith-linux/ubuntu/stable --to-suite=groovy -b -y regolith-gnome-flashback
# Upgrading non-uniform regolith-i3-gaps-config (UNSTABLE -> STABLE) from null to 2.8.0-1
copy-package --from=~regolith-linux/ubuntu/unstable --from-suite=focal --to=~regolith-linux/ubuntu/stable --to-suite=focal -b -y regolith-i3-gaps-config
# Upgrading non-uniform regolith-i3xrocks-config (UNSTABLE -> STABLE) from null to 3.2.6-1ubuntu2
copy-package --from=~regolith-linux/ubuntu/unstable --from-suite=focal --to=~regolith-linux/ubuntu/stable --to-suite=focal -b -y regolith-i3xrocks-config
# Upgrading non-uniform regolith-rofi-config (UNSTABLE -> STABLE) from null to 1.3.1-1
copy-package --from=~regolith-linux/ubuntu/unstable --from-suite=focal --to=~regolith-linux/ubuntu/stable --to-suite=focal -b -y regolith-rofi-config
# Upgrading non-uniform regolith-rofication (UNSTABLE -> STABLE) from null to 1.2.3-1
copy-package --from=~regolith-linux/ubuntu/unstable --from-suite=focal --to=~regolith-linux/ubuntu/stable --to-suite=focal -b -y regolith-rofication
# Upgrading non-uniform regolith-styles (UNSTABLE -> STABLE) from 2.4.24-1 to 2.6.13-1ubuntu2
copy-package --from=~regolith-linux/ubuntu/unstable --from-suite=focal --to=~regolith-linux/ubuntu/stable --to-suite=focal -b -y regolith-styles
# Upgrading uniform regolith-unclutter-xfixes from null to 1.5-2 in STABLE
copy-package --from=~regolith-linux/ubuntu/stable --from-suite=bionic --to=~regolith-linux/ubuntu/stable --to-suite=groovy -b -y regolith-unclutter-xfixes
# Upgrading non-uniform remontoire (UNSTABLE -> STABLE) from null to 1.4.0-1
copy-package --from=~regolith-linux/ubuntu/unstable --from-suite=focal --to=~regolith-linux/ubuntu/stable --to-suite=focal -b -y remontoire
# Upgrading uniform td-cli from null to 1.2.4-7 in STABLE
copy-package --from=~regolith-linux/ubuntu/stable --from-suite=bionic --to=~regolith-linux/ubuntu/stable --to-suite=groovy -b -y td-cli
# Upgrading uniform xrescat from null to 1.2.1-1 in STABLE
copy-package --from=~regolith-linux/ubuntu/stable --from-suite=bionic --to=~regolith-linux/ubuntu/stable --to-suite=focal -b -y xrescat
sleep 2000
# Upgrading non-uniform dracula-gtk (UNSTABLE -> STABLE) from null to 1.0.1-1
copy-package --from=~regolith-linux/ubuntu/unstable --from-suite=groovy --to=~regolith-linux/ubuntu/stable --to-suite=groovy -b -y dracula-gtk
# Upgrading non-uniform gruvbox-gtk (UNSTABLE -> STABLE) from null to 1.0.1-1
copy-package --from=~regolith-linux/ubuntu/unstable --from-suite=groovy --to=~regolith-linux/ubuntu/stable --to-suite=groovy -b -y gruvbox-gtk
# Upgrading non-uniform i3-gaps-wm (UNSTABLE -> STABLE) from null to 4.18.2-1~regolith2
copy-package --from=~regolith-linux/ubuntu/unstable --from-suite=groovy --to=~regolith-linux/ubuntu/stable --to-suite=groovy -b -y i3-gaps-wm
# Upgrading non-uniform regolith-compositor-compton-glx (UNSTABLE -> STABLE) from null to 1.1.0-1
copy-package --from=~regolith-linux/ubuntu/unstable --from-suite=groovy --to=~regolith-linux/ubuntu/stable --to-suite=groovy -b -y regolith-compositor-compton-glx
# Upgrading non-uniform regolith-compositor-picom-glx (UNSTABLE -> STABLE) from null to 1.1.1-1
copy-package --from=~regolith-linux/ubuntu/unstable --from-suite=groovy --to=~regolith-linux/ubuntu/stable --to-suite=groovy -b -y regolith-compositor-picom-glx
# Upgrading non-uniform regolith-compositor-xcompmgr (UNSTABLE -> STABLE) from null to 1.2.0-1
copy-package --from=~regolith-linux/ubuntu/unstable --from-suite=groovy --to=~regolith-linux/ubuntu/stable --to-suite=groovy -b -y regolith-compositor-xcompmgr
# Upgrading non-uniform regolith-default-settings (UNSTABLE -> STABLE) from null to 1.0.1-1focal1
copy-package --from=~regolith-linux/ubuntu/unstable --from-suite=groovy --to=~regolith-linux/ubuntu/stable --to-suite=groovy -b -y regolith-default-settings
# Upgrading non-uniform regolith-desktop (UNSTABLE -> STABLE) from null to 2.82-1groovy
copy-package --from=~regolith-linux/ubuntu/unstable --from-suite=groovy --to=~regolith-linux/ubuntu/stable --to-suite=groovy -b -y regolith-desktop
# Upgrading non-uniform regolith-i3-gaps-config (UNSTABLE -> STABLE) from null to 2.8.0-1
copy-package --from=~regolith-linux/ubuntu/unstable --from-suite=groovy --to=~regolith-linux/ubuntu/stable --to-suite=groovy -b -y regolith-i3-gaps-config
# Upgrading non-uniform regolith-i3xrocks-config (UNSTABLE -> STABLE) from null to 3.2.6-1ubuntu2
copy-package --from=~regolith-linux/ubuntu/unstable --from-suite=groovy --to=~regolith-linux/ubuntu/stable --to-suite=groovy -b -y regolith-i3xrocks-config
# Upgrading non-uniform regolith-rofi-config (UNSTABLE -> STABLE) from null to 1.3.1-1
copy-package --from=~regolith-linux/ubuntu/unstable --from-suite=groovy --to=~regolith-linux/ubuntu/stable --to-suite=groovy -b -y regolith-rofi-config
# Upgrading non-uniform regolith-rofication (UNSTABLE -> STABLE) from null to 1.2.3-1
copy-package --from=~regolith-linux/ubuntu/unstable --from-suite=groovy --to=~regolith-linux/ubuntu/stable --to-suite=groovy -b -y regolith-rofication
# Upgrading non-uniform regolith-styles (UNSTABLE -> STABLE) from 2.4.24-1 to 2.6.13-1ubuntu2
copy-package --from=~regolith-linux/ubuntu/unstable --from-suite=groovy --to=~regolith-linux/ubuntu/stable --to-suite=groovy -b -y regolith-styles
# Upgrading non-uniform remontoire (UNSTABLE -> STABLE) from null to 1.4.0-1
copy-package --from=~regolith-linux/ubuntu/unstable --from-suite=groovy --to=~regolith-linux/ubuntu/stable --to-suite=groovy -b -y remontoire
# Upgrading uniform xrescat from null to 1.2.1-1 in STABLE
copy-package --from=~regolith-linux/ubuntu/stable --from-suite=bionic --to=~regolith-linux/ubuntu/stable --to-suite=groovy -b -y xrescat