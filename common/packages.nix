{ config, pkgs, ... }:

{
  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
    vim
    networkmanager
    fastfetch
    firefox
    home-manager
    brightnessctl
    telegram-desktop
    steam
  ];
}
