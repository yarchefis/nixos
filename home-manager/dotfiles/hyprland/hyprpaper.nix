{ config, lib, pkgs, ... }:
{
  services.hyprpaper = {
    enable = true;
    settings = {
      preload = [
        "~/Pictures/menhera.jpg"
      ];
      wallpaper = [
        "HDMI-A-1,~/Pictures/menhera.jpg"
        "DVI-D-1,~/Pictures/menhera.jpg"
      ];
    };
  };
}