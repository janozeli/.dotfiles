{ config, pkgs, ... }:

{
  home.username = "janozeli";
  home.homeDirectory = "/home/janozeli";

  home.stateVersion = "22.11"; # Please read the comment before changing.

  home.packages = [
  ];

  home.file = {
  };

  home.sessionVariables = {
    EDITOR = "nvim";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
