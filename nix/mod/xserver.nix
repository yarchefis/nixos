{
    services.xserver = {
        enable = true;
        desktopManager = {
            xterm.enable = false;
            #xfce.enable = true;
        };
    };
    services.displayManager.defaultSession = "hyprland";
    services.displayManager.sddm.enable = true;
    #services.displayManager.sddm.wayland.enable = true;
    services.displayManager.sddm.setupScript = ''
      xrandr --output DVI-D-0 --off
    '';

}
