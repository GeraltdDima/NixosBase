{ config, lib, ... }:

{
  wayland.windowManager.hyprland = {
    enable = true;

    extraConfig = ''
      source = ~/.config/hypr/modules/monitors.conf
      source = ~/.config/hypr/modules/variables.conf
      source = ~/.config/hypr/modules/environment.conf
      source = ~/.config/hypr/modules/autostart.conf
      source = ~/.config/hypr/modules/general.conf
      source = ~/.config/hypr/modules/decorations.conf
      source = ~/.config/hypr/modules/input.conf
      source = ~/.config/hypr/modules/mods.conf
      source = ~/.config/hypr/modules/keybinds.conf
      source = ~/.config/hypr/modules/animations.conf
      source = ~/.config/hypr/modules/windowrules.conf
      source = ~/.config/hypr/colors-hyprland.conf
    '';
  };

  home.file = {
    ".config/hypr/modules".source = config.lib.file.mkOutOfStoreSymlink "/home/dima/.config/home-manager/hyprland/modules";
    ".config/hypr/colors-hyprland.conf".source = config.lib.file.mkOutOfStoreSymlink "/home/dima/.cache/wal/colors-hyprland.conf";
  };
}
