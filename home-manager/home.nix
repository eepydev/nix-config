# This is your home-manager configuration file
# Use this to configure your home environment (it replaces ~/.config/nixpkgs/home.nix)
{
  inputs,
  lib,
  config,
  pkgs,
  ...
}: {
  # You can import other home-manager modules here
  imports = [
    # If you want to use home-manager modules from other flakes (such as nix-colors):
    # inputs.nix-colors.homeManagerModule

    # You can also split up your configuration and import pieces of it here:
    ./programs/hyprland.nix
    ./programs/foot.nix
    ./programs/kitty.nix
    ./programs/dunst.nix
    ./programs/starship.nix
    ./programs/hypridle.nix
    ./programs/hyprlock.nix
  ];

  nixpkgs = {
    # You can add overlays here
    overlays = [
      # If you want to use overlays exported from other flakes:
      # neovim-nightly-overlay.overlays.default

      # Or define it inline, for example:
      # (final: prev: {
      #   hi = final.hello.overrideAttrs (oldAttrs: {
      #     patches = [ ./change-hello-to-hi.patch ];
      #   });
      # })
    ];
    # Configure your nixpkgs instance
    config = {
      # Disable if you don't want unfree packages
      allowUnfree = true;
      # Workaround for https://github.com/nix-community/home-manager/issues/2942
      allowUnfreePredicate = _: true;
    };
  };

  # TODO: Set your username
  home = {
    username = "player1";
    homeDirectory = "/home/player1";
  };

  # Add stuff for your user as you see fit:
  programs.neovim.enable = true;
   home.packages = with pkgs; [ 
    gcc
    nodejs
    zig
    eza
    tree
    joshuto
    neofetch
    nitch
    joshuto
    rofi
    wl-clipboard
    bottom
    obsidian
    imv
    mpv
    gh
    libsixel
    swww
    gifsicle
    discord
    element-desktop
    weechat
    tmux
    brave
    hyprpolkitagent
    udiskie
    grim
    slurp
    lua
    eww
  ];


  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    shellAliases = {
        update = "home-manager switch -f ~/.Dotfiles/nix-config/home-manager/home.nix";
        switch = "sudo nixos-rebuild switch --flake .Dotfiles/nix-config/#goblin";
        eza = "eza -l";
    };
    history = {
      size = 10000;
      path = "${config.xdg.dataHome}/zsh/history";
    };

  };

#  services.hyprpaper = {
#     enable = true;
#     settings = {
#       preload = [
#         "~/Pictures/Wallpapers/Shogoki.png"
#      ];
#       wallpaper = [
#         "eDP-1,~/Pictures/Wallpapers/Shogoki.png"
#       ];
#     };
#   };


  # Zathura
  programs.zathura = {
    enable = true;
    options = {
      incremental-search = "true";
      default-bg = "1e1e2e";
      default-fg = "cdd6f4";
    };
  };

  # Enable waybar
  programs.waybar.enable = true;

  # Enable home-manager and git
  programs.home-manager.enable = true;
  programs.git.enable = true;

  # Nicely reload system units when changing configs
  systemd.user.startServices = "sd-switch";

  # https://nixos.wiki/wiki/FAQ/When_do_I_update_stateVersion
  home.stateVersion = "24.11";
}
