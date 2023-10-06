{ pkgs, outputs, overlays, lib, inputs, ... }:
let
  flake-compat = builtins.fetchTarball "https://github.com/edolstra/flake-compat/archive/master.tar.gz";
  my-python-packages = ps: with ps; [
    numpy
  ];
in
{
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.loader.efi.efiSysMountPoint = "/boot";
  programs.zsh.enable = true;

  networking = {
    networkmanager.enable = true;
    firewall.enable = false;
  };
  security = {
    sudo.enable = true;
  };
  security.pam.services.swaylock = {
    text = ''
      auth include login
    '';
  };
  services.blueman = {
    enable = true;
  };

  time = {
    hardwareClockInLocalTime = true;
    timeZone = "Europe/Paris";
  };
  i18n.defaultLocale = "en_US.UTF-8";
  console = {
    font = "Lat2-Terminus16";
    useXkbConfig = true;
  };
  users = {
    users.gwen = {
      isNormalUser = true;
      extraGroups = [ "wheel" "networkmanager" "audio" "video" "libvirtd" "docker" ];
      packages = with pkgs; [ ];
    };
    defaultUserShell = pkgs.zsh;
  };
  fonts.packages = with pkgs; [
    material-design-icons
    # phospor
    inter
    material-symbols
    rubik
    ibm-plex
    nerdfonts
  ];
  sound.enable = true;
  # rtkit is optional but recommended
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    # If you want to use JACK applications, uncomment this
    #jack.enable = true;
  };
  virtualisation = {
    docker.enable = true;
    libvirtd.enable = true;
  };
  environment.systemPackages = with pkgs; [
    (pkgs.python3.withPackages my-python-packages)
    age
    armcord
    bat
    blueman
    brightnessctl
    brillo
    dosis
    firefox
    git
    gtk3
    home-manager
    inotify-tools
    jq
    libnotify
    lua-language-server
    lua54Packages.lua
    lutgen
    maim
    mpv
    nix-prefetch-git
    nodejs
    pamixer
    pstree
    pulseaudio
    python3
    ripgrep
    rnix-lsp
    simplescreenrecorder
    slop
    spotdl
    spotify
    st
    tailscale
    terraform
    terraform-docs
    terraform-ls
    udiskie
    grim
    slop
    eww-wayland
    wayland
    swaylock-effects
    swaybg
    ueberzugpp
    unzip
    wirelesstools
    wmctrl
    xclip
    xdg-utils
    xdotool
    xorg.xf86inputevdev
    xorg.xf86inputlibinput
    xorg.xf86inputsynaptics
    xorg.xf86videoati
    xorg.xorgserver
    xorg.xwininfo
    yaml-language-server
  ];

  environment.shells = with pkgs; [ zsh ];

  programs.dconf.enable = true;
  qt = {
    enable = true;
    platformTheme = "gtk2";
    style = "gtk2";
  };
  services.dbus.enable = true;
  xdg = {
    portal = {
      enable = true;
      extraPortals = with pkgs; [
        xdg-desktop-portal-hyprland
      ];
    };
  };
  services.printing.enable = true;
  hardware.bluetooth = {
    enable = true;
    powerOnBoot = true;
  };
  services.xserver = {
    layout = "us";
    xkbVariant = "intl";
  };
  services.tailscale = {
    enable = true;
  };
  services.mullvad-vpn.enable = true;
  services.arbtt.enable = true;
  security.polkit.enable = true;
  nix = {
    settings = {
      experimental-features = [ "nix-command" "flakes" ];
      trusted-users = [ "root" "@wheel" ];
      auto-optimise-store = true;
      warn-dirty = false;
    };
    gc = {
      automatic = true;
      options = "--delete-older-than 1d";
    };
    optimise.automatic = true;
  };
  system = {
    copySystemConfiguration = false;
  };
}
