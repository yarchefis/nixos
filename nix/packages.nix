{ pkgs, ... }: {
  nixpkgs.config = {
    allowUnfree = true;
    permittedInsecurePackages = ["python-2.7.18.8" "electron-25.9.0"];
  };

  environment.systemPackages = with pkgs; [
    zsh

    # Desktop apps
    chromium
    telegram-desktop
    wofi
    gimp
    krita
    xfce.thunar
    android-studio
    transmission_4
    arduino-ide
    gnome-calculator
    steam

    # Coding stuff
    nodejs
    python312
    python312Packages.pip
    vscode

    # CLI utils
    kitty
    neofetch
    wget
    git
    usbutils
    python312Packages.pyserial
    esptool
    mitmproxy


    #htop
    unzip
    ffmpeg
    zip
    grim
    slurp
    lshw
    tree
    byedpi
    openssh
    sshfs
    #zsh-powerlevel10k

    # Wayland stuff
    xwayland
    wl-clipboard
    wlr-randr

    # WMs and stuff
    hyprland
    waybar
    hyprpaper
    home-manager
    xdg-desktop-portal-hyprland

    # Media Control
    playerctl
    # Bluetooth Support
    bluez
    bluez-tools
    blueman
    # Sound Control
    pavucontrol

    #tor
    tor
    obfs4

    glibc
    glib
    gobject-introspection
    nss
    dbus
    atk
    cups
    gdk-pixbuf
    gtk3
    xorg.libXcomposite
    xorg.libXdamage
    xorg.libXrandr
    rPackages.gbm
    xkeyboard_config
    pango
    cairo
    alsa-lib
    steam-run
    ];
}
