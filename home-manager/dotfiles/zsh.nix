{ config, ...}:
{
  programs.zsh = {
   enable = true;
   enableCompletion = true;
   autosuggestion.enable = true;
   syntaxHighlighting.enable = true;
   shellAliases = {
      lla = "ls -l -a";
      update = "sudo nixos-rebuild switch --flake /home/yardev/nixos/";
      hupdate = "home-manager switch --flake /home/yardev/nixos/";
    };
   shellInit = "neofetch";
   history.size = 10000;
   history.path = "${config.xdg.dataHome}/zsh/history";
   oh-my-zsh = {
    enable = true;
    plugins = [ "git" ];
    theme = "terminalparty";
   };
  };
}
