# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
    ];

  # Bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  networking.hostName = "nixos"; # Define your hostname.

  # Enable networking
  networking.networkmanager.enable = true;

  # Set your time zone.
  time.timeZone = "America/Sao_Paulo";

  # Select internationalisation properties.
  i18n.defaultLocale = "pt_BR.UTF-8";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "pt_BR.UTF-8";
    LC_IDENTIFICATION = "pt_BR.UTF-8";
    LC_MEASUREMENT = "pt_BR.UTF-8";
    LC_MONETARY = "pt_BR.UTF-8";
    LC_NAME = "pt_BR.UTF-8";
    LC_NUMERIC = "pt_BR.UTF-8";
    LC_PAPER = "pt_BR.UTF-8";
    LC_TELEPHONE = "pt_BR.UTF-8";
    LC_TIME = "pt_BR.UTF-8";
  };

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.janozeli = {
    isNormalUser = true;
    description = "Janozeli";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [
    ];
  };

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  system.stateVersion = "23.05";

# Enabling hyprlnd on NixOS
programs.hyprland = {
  enable = true;
  xwayland.enable = true;
};

environment.systemPackages = with pkgs; [
	pkgs.waybar
	pkgs.mako
	pkgs.libnotify
	pkgs.mpvpaper
	pkgs.kitty
	pkgs.wofi
	pkgs.firefox
	pkgs.xfce.thunar
	pkgs.wlogout
	pkgs.swaylock
	pkgs.cliphist
	pkgs.sddm
	pkgs.distrobox
	pkgs.zsh
	pkgs.git
	pkgs.gh
	pkgs.networkmanagerapplet
	pkgs.spotify
	pkgs.neovim
	pkgs.mpv
	pkgs.surf
	pkgs.wget
	pkgs.curl
	pkgs.openvpn
	pkgs.openresolv
	pkgs.networkmanager-openvpn
	pkgs.neomutt
	pkgs.dash
	pkgs.zathura
	pkgs.killall
	pkgs.stow
];

hardware = {
    # Opengl
    opengl.enable = true;
};

# XDG portal
xdg.portal.enable = true;
xdg.portal.extraPortals = [ pkgs.xdg-desktop-portal-gtk ];

# Enable sound with pipewire.
sound.enable = true;
security.rtkit.enable = true;
services.pipewire = {
  enable = true;
  alsa.enable = true;
  alsa.support32Bit = true;
  pulse.enable = true;
  jack.enable = true;
};

programs.zsh.enable = true;
services.flatpak.enable = true;
services.xserver.enable = true;
services.xserver.displayManager.sddm.enable = true;
users.defaultUserShell = pkgs.zsh;
environment.binsh = "${pkgs.dash}/bin/dash";
programs.neovim.enable = true;
services.gvfs.enable = true;
nix.settings.experimental-features = [ "nix-command" "flakes" ];

security.pam.services.swaylock = {
    text = ''
      auth include login
    '';
  };
}
