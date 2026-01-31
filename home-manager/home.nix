{ config, lib, pkgs, ... }:

{
  home.username = "dima";
  home.homeDirectory = "/home/dima";

  home.stateVersion = "25.11";

  imports = [
    ./hyprland/hyprland.nix
    ./wal/wal.nix
  ];

  home.file = {
    "Pictures/Wallpapers".source = config.lib.file.mkOutOfStoreSymlink "/home/dima/.config/home-manager/Wallpapers";
  };
}
