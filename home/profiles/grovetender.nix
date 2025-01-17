{ inputs, pkgs, ... }:
{
  theme = "paradise";

  imports = [
    inputs.stylix.homeManagerModules.stylix
    inputs.anyrun.homeManagerModules.default
    ../../modules/home
  ];

  opt = {
    browser = {
      firefox.enable = true;
    };
    misc = {
      obsidian.enable = true;
      yamlfmt.enable = true;
      rbw.enable = true;
    };
    music = {
      spicetify.enable = true;
    };
    launcher = {
      anyrun.enable = true;
    };
    lock = {
      hyprlock.enable = false;
    };
    services = {
      ags.enable = true;
      cliphist.enable = true;
      hypridle.enable = true;
      hyprpaper.enable = true;
      kanshi.enable = true;
      # swaync.enable = true;
      #waybar.enable = true;
      glance.enable = true;
    };
    utils = {
      rofi.enable = true;
      lazygit.enable = true;
      k9s.enable = true;
      sss.enable = false;
    };
    shell = {
      zellij.enable = true;
    };
  };

  modules = {
    zsh.enable = true;
    gpg-agent.enable = true;
  };

  default = {
    de = "hyprland";
    terminal = "ghostty";
  };

  home = {
    packages = with pkgs; [
      android-tools
      lunar-client
      scrcpy
      stremio
      vesktop
      equicord
      wdisplays
      yazi
      # affine
    ];
  };
}
