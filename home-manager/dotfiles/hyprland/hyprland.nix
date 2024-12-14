{ config, lib, pkgs, ... }:

{
  imports = [
      ./hyprland-environment.nix
    ];

  wayland.windowManager.hyprland = {
    enable = true;
    xwayland.enable = true;




    extraConfig = "
      monitor = HDMI-A-1, 1920x1080@100, 0x0, 1
      monitor = DVI-D-1, 1920x1080, -1080x-100, 1, transform, 1

      $terminal = kitty
      $fileManager = thunar
      $menu = wofi

      exec-once = waybar
      exec-once = swww init & sleep 0.5
      exec-once = ciadpi -s1 -q1 -Y -Ar -s5 -o25000+s -At -f-1 -r1+s -As -s1 -o1+s -s-1 -An -b+500
      exec-once = tor -f /home/yardev/.torrc

      env = XCURSOR_SIZE,24
      env = HYPRCURSOR_SIZE,24

      general {
          gaps_in = 10
          gaps_out = 25

          border_size = 2

          col.active_border = rgba(ebebebee)
          col.inactive_border = rgba(303030ee)

          resize_on_border = false

          allow_tearing = false

          layout = dwindle
      }

      decoration {
          rounding = 10

          active_opacity = 1.0
          inactive_opacity = 1.0

          shadow {
              enabled = true
              range = 4
              render_power = 3
              color = rgba(1a1a1aee)
          }

          blur {
              enabled = false
              size = 3
              passes = 1

              vibrancy = 0.1696
          }
      }

      animations {
              enabled = yes

              bezier = ease,0.4,0.02,0.21,1

              animation = windows, 1, 3.5, ease, slide
              animation = windowsOut, 1, 3.5, ease, slide
              animation = border, 1, 6, default
              animation = fade, 1, 3, ease
              animation = workspaces, 1, 3.5, ease
          }



      dwindle {
          pseudotile = true
          preserve_split = true
      }

      master {
          new_status = master
      }

      misc {
          disable_splash_rendering = true
          disable_hyprland_logo = true
      }

      input {
          kb_layout = us, ru
          kb_variant =
          kb_model =
          kb_options = grp:alt_shift_toggle
          kb_rules =

          follow_mouse = 1

          sensitivity = 0

          touchpad {
              natural_scroll = false
          }
      }

      gestures {
          workspace_swipe = false
      }

      device {
          name = epic-mouse-v1
          sensitivity = -0.5
      }


      $mainMod = SUPER

      bind = $mainMod, W, exec, kitty
      bind = $mainMod, Q, killactive,
      bind = $mainMod, M, exit,
      bind = $mainMod, E, exec, $fileManager
      bind = $mainMod, F, togglefloating,
      bind = $mainMod, D, exec, $menu
      bind = $mainMod, P, pseudo,
      bind = $mainMod, J, togglesplit,
      bind = $mainMod, S, exec, slurp | grim -g - - | wl-copy

      bind = $mainMod, left, movefocus, l
      bind = $mainMod, right, movefocus, r
      bind = $mainMod, up, movefocus, u
      bind = $mainMod, down, movefocus, d

      bind = $mainMod, 1, workspace, 1
      bind = $mainMod, 2, workspace, 2
      bind = $mainMod, 3, workspace, 3
      bind = $mainMod, 4, workspace, 4
      bind = $mainMod, 5, workspace, 5
      bind = $mainMod, 6, workspace, 6
      bind = $mainMod, 7, workspace, 7
      bind = $mainMod, 8, workspace, 8
      bind = $mainMod, 9, workspace, 9
      bind = $mainMod, 0, workspace, 10

      bind = $mainMod SHIFT, 1, movetoworkspace, 1
      bind = $mainMod SHIFT, 2, movetoworkspace, 2
      bind = $mainMod SHIFT, 3, movetoworkspace, 3
      bind = $mainMod SHIFT, 4, movetoworkspace, 4
      bind = $mainMod SHIFT, 5, movetoworkspace, 5
      bind = $mainMod SHIFT, 6, movetoworkspace, 6
      bind = $mainMod SHIFT, 7, movetoworkspace, 7
      bind = $mainMod SHIFT, 8, movetoworkspace, 8
      bind = $mainMod SHIFT, 9, movetoworkspace, 9
      bind = $mainMod SHIFT, 0, movetoworkspace, 10

      bind = $mainMod, mouse_down, workspace, e+1
      bind = $mainMod, mouse_up, workspace, e-1

      bindm = $mainMod, mouse:272, movewindow
      bindm = $mainMod, mouse:273, resizewindow

      bindel = ,XF86AudioRaiseVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+
      bindel = ,XF86AudioLowerVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-
      bindel = ,XF86AudioMute, exec, wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle
      bindel = ,XF86AudioMicMute, exec, wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle
      bindel = ,XF86MonBrightnessUp, exec, brightnessctl s 10%+
      bindel = ,XF86MonBrightnessDown, exec, brightnessctl s 10%-

      bindl = , XF86AudioNext, exec, playerctl next
      bindl = , XF86AudioPause, exec, playerctl play-pause
      bindl = , XF86AudioPlay, exec, playerctl play-pause
      bindl = , XF86AudioPrev, exec, playerctl previous

    ";

  };

}
