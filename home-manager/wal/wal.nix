{ config, lib, ... }:

{
  home.file = {
    ".config/wal/templates".source = config.lib.file.mkOutOfStoreSymlink "./templates";
  };
}
