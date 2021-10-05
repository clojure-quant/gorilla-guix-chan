(define-module (gorilla install desktop)
  #:export (my-desktop
            ))

(define my-desktop
  (list 
    "xdot" ; graphviz .dot viewer needed for guix graph
    "syncthing-gtk" 
    "emacs"
    "emacs-spacemacs-theme"
    ; "vim"
    ; "neovim"
    "eovim" ;    NEOVIM GUI
    "xclock" ;x test
    "libreoffice"  ; libreoffice
    "remmina"
    "kate" ;          text editor
    "glimpse"
    ; browser
    "icecat" ; - A free software alternative to Firefox
    "ungoogled-chromium"
    "midori"
    "nomad"
    "vimb"   ; vim keybinding browser.
    "nyxt"    ; browser with keybindings.  https://sparkylinux.org/nyxt/
    ;; Nyxt media dependencies.
    "gstreamer" "gst-libav" "gst-plugins-base" "gst-plugins-good"
    "gst-plugins-bad" "gst-plugins-ugly"

    ; "palemoon" ;- A highly customizable browser
    "vlc"
    "subdl" ; subtitle download
    "kodi"

    "xfce4-screenshooter" 
    "mousepad" 
    "xfce4-notifyd"
	  "xfce4-whiskermenu-plugin" "exo" "font-fira-mono" "mpv"
	  "xpdf" "xcursor-themes"
	 "scm" "ncurses" 
	 "font-google-noto" "font-openmoji" "hicolor-icon-theme"
	 "adwaita-icon-theme" "ffmpeg" "sxiv" "elementary-xfce-icon-theme"
	 "font-gnu-unifont" "fontconfig" "font-hack" "breeze-icons"
	 "bsnes" "pavucontrol" 
	 "catfish"
   
   ; "sound" ; to "use-service-modules" to always use pulseaudio to avoid apps crashing. 
   ; "gvfs" ; virtual file system
   "xfce4-whiskermenu-plugin" 
   "udiskie" ; mount usb drives https://github.com/coldfix/udiskie/wiki/Usage

    "keepassxc"
    ; "transmission" ; torrent
    "transmission:gui" ; without :gui it does not work.n  The normal "out" output is the CLI versiononly.
    "youtube-dl"
    "qbittorrent" ; torrent
    "libwebp" ; webp video compression"
    "opus" ; audio codec
    "claws-mail"
    ; "kmail"
    "celestia-gtk"
    "flatpak"
    "xdotool" ; determine windows class names (for i3 wm rules)

    "docker"
    "vscodium"
    "qemu"
    "go-ipfs"   ; bin: ipfs 
    "ntp"
    
  ))
