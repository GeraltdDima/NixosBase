{ config, lib, ... }:

{
  home.file = {
    ".config/wal/templates".source = config.lib.file.mkOutOfStoreSymlink "/home/dima/.config/home-manager/wal/templates";
  };
}
