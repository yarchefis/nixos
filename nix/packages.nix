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

    # Coding stuff
    nodejs
    python313
    vscode

    # CLI utils
    kitty
    neofetch
    wget
    git
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

  ];
}
