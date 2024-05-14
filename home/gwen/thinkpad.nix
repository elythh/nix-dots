{
  inputs,
  pkgs,
  config,
  ...
}: {
  theme = "decay";
  colorScheme = {
    palette = import ../shared/cols/${config.theme}.nix {};
    name = "${config.theme}";
  };

  imports = [
    inputs.anyrun.homeManagerModules.default
    ../../modules/home
  ];

  modules = {
    anyrun.enable = true;
    hyprland.enable = true;
    k9s.enable = true;
    lazygit.enable = true;
    rofi.enable = true;
    rbw.enable = true;
    spicetify.enable = true;
    sss.enable = true;
    zellij.enable = true;
    zsh.enable = true;
  };

  default = {
    bar = "waybar";
    lock = "hyprlock";
    terminal = "wezterm";
  };

  home = {
    packages = with pkgs; [
      #(pkgs.callPackage ../../derivs/phocus.nix {inherit config;})
      (discord.override {withVencord = true;})
      scrcpy
      stremio
      yazi
      showmethekey
    ];
  };
}
