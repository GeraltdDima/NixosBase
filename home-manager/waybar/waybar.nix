{ config, lib, ... }:

{
  programs.waybar = {
    enable = true;
  };

  home.file = {
    ".config/waybar/style.css" = config.lib.file.mkOutOfStoreSymlink "/home/dima/.config/home-manager/waybar/style.css";
    ".config/waybar/colors-waybar.css" = config.lib.mkOutOfStoreSymlink "/home/dima/.cache/wal/colors-waybar.css";
    ".config/waybar/modules.json" = config.lib.file.mkOutOfStoreSymlink "/home/dima/.config/home-manager/waybar/modules.json";
  };
}
