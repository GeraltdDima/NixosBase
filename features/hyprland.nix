{ pkgs, ... }:

{
  programs.hyprland = {
    enable = true;
    withUWSM = true;
    xwayland.enable = true;
  };

  environment.systemPackages = with pkgs; [
    hyprland
    rofi
    alacritty
    pavucontrol
    waybar
    swww
    wlogout
    pywal
    hyprlock
  ];
}
