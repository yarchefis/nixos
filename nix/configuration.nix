{ config, lib, pkgs, ... }:

{
  imports =
    [
      ./hardware-configuration.nix
      ./mod/bundle.nix
      ./packages.nix
    ];

    boot = {
      loader = {
       systemd-boot.enable = true;
       efi.canTouchEfiVariables = true;
      };
      kernelParams = [ "video=HDMI-A-1:1920x1080@100" "nvidia_drm.fbdev=1" "nvidia-drm.modeset=1" ];
    };

  networking.hostName = "nixos";
  networking.networkmanager.enable = true;

  time.timeZone = "Europe/Moscow";

  nixpkgs.config.allowUnfree = true;

  nix.settings.experimental-features = [ "nix-command" "flakes" ];


  users.users.yardev = {
    isNormalUser = true;
    extraGroups = [ "wheel" "users" ];
  };




  system.stateVersion = "24.11";

}
