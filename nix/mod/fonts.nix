{ config, lib, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    twemoji-color-font
  ];
  fonts = {
    fonts = with pkgs; [
      noto-fonts
      noto-fonts-cjk-sans
      noto-fonts-emoji
      nerd-fonts.fira-code
      nerd-fonts.droid-sans-mono
      twemoji-color-font
      fira-code
      fira-code-symbols
      ubuntu-classic
    ];
  };

}
