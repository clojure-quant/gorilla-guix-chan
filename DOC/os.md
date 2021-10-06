
GUIX SYSTEM ADMIN

guix describe                             ; shows installed repositories
guix system list-generations


# WINDOW MANAGER

KDE - not available.

xfce
https://guix.gnu.org/en/blog/2019/running-a-guix-xfce-desktop-on-centos-7/

sway
Wayland compositor compatible with i3
the difference is that now GDM supports wayland session
although you can run X apps in it using Xwayland
https://gitlab.com/rolas978/guix-sway/-/blob/master/guix-sway-config.scm
https://www.reddit.com/r/GUIX/comments/epckio/gnu_system_with_wayland_and_sway/?utm_medium=android_app&utm_source=share
https://notabug.org/jbranso/cheatsheets/src/master/guix.org  sway notes
https://notabug.org/jbranso/guix-config/src/master/sway-service.scm

dwm
https://www.reddit.com/r/GUIX/comments/l9ncsr/dwm_and_st_on_guix_best_practice/?utm_medium=android_app&utm_source=share

i3
https://github.com/JensAc/dotfiles/blob/master/.config/i3/config
i3 + polybar, rofi,
name: polybar

EXWM 
https://config.daviwil.com/desktop



# hardware architecture

https://willschenk.com/articles/2019/installing_guix_on_nuc/

https://guix.gnu.org/cookbook/en/guix-cookbook.html#Running-Guix-on-a-Linode-Server

https://guix.gnu.org/en/blog/2017/porting-guixsd-to-armv7/

https://framagit.org/tyreunom/guix-android

https://github.com/aartaka/guix-config/blob/master/dev-manifest.scm

pinebook pro
https://othacehe.org/distributing-guix-system-pinebook-pro-images.html



# luks disk encryption

https://libreboot.org/docs/gnulinux/guix_system.html


# auto mount usb disk:
udisks probably


# CUPS PRINTING

http://localhost:631/
sudo herd restart cups
lp lpadmin group.



# Non free kernel with installer 
https://guix.gnu.org/manual/en/html_node/Building-the-Installation-Image.html#Building-the-Installation-Image
https://github.com/deusmax/guixsd-config-install
https://github.com/SystemCrafters/guix-installer

Has: wine, emacs, nvidia, broadcom, clojure.
https://gitlab.com/nonguix/nonguix.git

Nonguix can be installed as a Guix channel.

 To do so, add it to ~/.config/guix/channels.scm:
```
(cons* (channel (name 'nonguix) (url "https://gitlab.com/nonguix/nonguix") ;; Enable signature verification: (introduction (make-channel-introduction "897c1a470da759236cc11798f4e0a5f7d4d59fbc" (openpgp-fingerprint "2A39 3FFF 68F4 EF7A 3D29 12AF 6F51 20A0 22FB B2D5")))) %default-channels)
guix pull
sudo -E guix pull

git clone https://gitlab.com/nonguix/nonguix
cd nonguix
guix system disk-image -t iso9660 nongnu/system/install.scm 
sudo dd if=/gnu/store/2ifap65d6v3f06l5c2xsa2qwyi5yy9x1-image.iso of=/dev/sdb bs=4M status=progress oflag=sync
```


# Export ISO image

C2.scm  ->see myLinux/distros/guix

guix system disk-image -t iso9660 /home/andreas/Documents/myguix/c2.scm
/gnu/store/6phpslb8z6zz6npii8qcnsrcvmwqz982-image.iso

sudo dd if=/gnu/store/6phpslb8z6zz6npii8qcnsrcvmwqz982-image.iso of=/dev/sdb status=progress
sync

tune2fs -O large_dir /dev/sdd3

df -i
