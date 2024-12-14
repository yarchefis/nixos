{ ... }:
{
  programs.wofi = {
    enable = true;
    settings = {
      width = 500;
      height = 400;
      location = "center";
      show = "drun";
      prompt = "Search...";
      allow_markup = true;
      no_actions = true;
      halign = "fill";
      orientation = "vertical";
      content_halign = "fill";
      insensitive = true;
      allow_images = true;
      image_size = 38;
      gtk_dark = true;
    };
    style = ''
    /* Mocha Mauve */
    @define-color accent #A277FF; /* Фиолетовый акцент заголовка */
    @define-color bg #1E1E2E;     /* Тёмный фон */
    @define-color bg2 #181825;    /* Тёмный фон для ввода */
    @define-color txt #CDD6F4;    /* Светлый текст */
    @define-color white #FFFFFF;  /* Белый текст */
    @define-color selected #45475A; /* Выбранный элемент */
    @define-color highlight #89B4FA; /* Синий акцент при выборе */

    * {
        font-family: 'JetBrains Mono Nerd Font', monospace;
        font-size: 14px;
    }

    /* Window */
    window {
        margin: 0px;
        padding: 0px;
        border-radius: 10px;
        background-color: @bg;
    }

    /* Input Bar */
    #input {
        padding: 12px;
        margin: 0px;
        background-color: @accent;
        color: @white; /* Белый текст для строки поиска */
        border: none;
        border-radius: 10px 10px 0px 0px;
        font-weight: bold;
    }

    /* Scroll */
    #scroll {
        background-color: @bg;
        padding: 5px;
    }

    /* List Entries */
    #entry {
        padding: 10px;
        margin: 5px 10px;
        border-radius: 5px;
        background-color: transparent;
        color: @txt;
    }

    #entry:selected {
        background-color: @selected;
    }

    #entry:selected #text {
        color: @highlight;
    }

    /* Text */
    #text {
        color: @txt;
    }

    /* Icons */
    #img {
        margin-right: 10px;
        background-size: contain;
        min-height: 32px;
        min-width: 32px;
    }
    '';
  };
}
