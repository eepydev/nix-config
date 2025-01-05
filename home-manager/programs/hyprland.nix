{
 wayland.windowManager.hyprland = {
  enable = true;
  settings = {
    "$mod" = "SUPER";
    bind = [
      "$mod, Return, exec, ghostty"
      "$mod, q, killactive"
      "$mod, e, exit"
      "$mod, f, fullscreen,"
      "$mod, t, togglefloating,"
      ", PRINT, exec, grim $(xdg-user-dir PICTURES)/$(date +'%s_grim.png')"


      "$mod, d, exec, rofi -show drun"
      "$mod, left, movefocus, l"
      "$mod, right, movefocus, r"
      "$mod, up, movefocus, u"
      "$mod, down, movefocus, d"

      "$mod, 1, workspace, 1"
      "$mod, 2, workspace, 2"
      "$mod, 3, workspace, 3"
      "$mod, 4, workspace, 4"
      "$mod, 5, workspace, 5"
      "$mod, 6, workspace, 6"
      "$mod, 7, workspace, 7"
      "$mod, 8, workspace, 8"
      "$mod, 9, workspace, 9"

      "$mod SHIFT, 1, movetoworkspace, 1"
      "$mod SHIFT, 2, movetoworkspace, 2"
      "$mod SHIFT, 3, movetoworkspace, 3"
      "$mod SHIFT, 4, movetoworkspace, 4"
      "$mod SHIFT, 5, movetoworkspace, 5"
      "$mod SHIFT, 6, movetoworkspace, 6"
      "$mod SHIFT, 7, movetoworkspace, 7"
      "$mod SHIFT, 8, movetoworkspace, 8"
      "$mod SHIFT, 9, movetoworkspace, 9"


      ",XF86AudioRaiseVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+"
      ",XF86AudioLowerVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"
      ",XF86AudioMute, exec, wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"
    ];

    # mouse movements 
    bindm = [
      "$mod, mouse:272, movewindow"
      "$mod, mouse:273, resizewindow"
      "$mod ALT, mouse:272, resizewindow"
    ];

    exec-once = [
      "waybar"
      "hyprpaper"
      "dunst"
      "hypridle"
      "swww-daemon"
      "systemctl --user start hyprpolkitagent"
      "udiskie"
    ];

  decoration = {
    rounding = 16;
    blur = {
      enabled = true;
      brightness = 1.0;
      contrast = 1.0;
      noise = 0.01;

      vibrancy = 0.2;
      vibrancy_darkness = 0.5;

      passes = 4;
      size = 7;

      popups = true;
      popups_ignorealpha = 0.2;
    };
   };
  }; 
 };
}
