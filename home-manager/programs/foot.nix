{
  pkgs,
  lib,
  ...
}: let
  colors = {
    dark = {
      foreground = "cdd6f4";
      background = "1e1e2e";
      regular0 = "45475a"; # black
      regular1 = "f38ba8"; # red
      regular2 = "a6e3a1"; # green
      regular3 = "f9e2af"; # yellow
      regular4 = "89b4fa"; # blue
      regular5 = "f5c2e7"; # magenta
      regular6 = "94e2d5"; # cyan
      regular7 = "bac2de"; # white
      bright0 = "585b70"; # bright black
      bright1 = "f38ba8"; # bright red
      bright2 = "a6e3a1"; # bright green
      bright3 = "f9e2af"; # bright yellow
      bright4 = "89b4fa"; # bright blue
      bright5 = "f5c2e7"; # bright magenta
      bright6 = "94e2d5"; # bright cyan
      bright7 = "a6adc8"; # bright white
    };

    light = {
      foreground = "cdd6f4"; # Text
      background = "1e1e2e"; # Base
      regular0 = "45475a"; # Surface 1
      regular1 = "f38ba8"; # red
      regular2 = "a6e3a1"; # green
      regular3 = "f9e2af"; # yellow
      regular4 = "89b4fa"; # blue
      regular5 = "f5c2e7"; # maroon
      regular6 = "94e2d5"; # teal
      regular7 = "bac2de"; # Subtext 1
      bright0 = "585b70"; # Surface 2
      bright1 = "f38ba8"; # red
      bright2 = "a6e3a1"; # green
      bright3 = "f9e2af"; # yellow
      bright4 = "89b4fa"; # blue
      bright5 = "f5c2e7"; # maroon
      bright6 = "94e2d5"; # teal
      bright7 = "a6adc8"; # Subtext 0
    };
  };
in {
  programs.foot = {
    enable = true;

    settings = {
      main = {
   #    font = "JetBrainsMono Nerdfont:size=7:line-height=16px";
        horizontal-letter-offset = 0;
        vertical-letter-offset = 0;
        pad = "4x4 center";
        selection-target = "clipboard";
      };

      bell = {
        urgent = "yes";
        notify = "yes";
      };

      # desktop-notifications = {
      #  command = "${lib.getExe pkgs.libnotify} -a \${app-id} -i \${app-id} \${title} \${body}";
      #      };

      scrollback = {
        lines = 10000;
        multiplier = 3;
        indicator-position = "relative";
        indicator-format = "line";
      };

    #      url = {
    #  launch = "${pkgs.xdg-utils}/bin/xdg-open \${url}";
    #     protocols = "http, https, ftp, ftps, file, mailto, ipfs";
    #  };

      cursor = {
        style = "beam";
        beam-thickness = 1;
      };

      colors =
        {
          alpha = 0.9;
        }
        // colors.dark;
    };
  };
}
