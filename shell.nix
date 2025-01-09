{ pkgs ? import <nixpkgs> {} }:

(pkgs.buildFHSEnv {
  name = "searxng";
  targetPkgs = pkgs: (with pkgs; [
    udev
    alsa-lib
  ]);
  multiPkgs = pkgs: (with pkgs; [
    gnumake
    bash
    wget
    geckodriver
    #udev
    #alsa-lib
  ]);
  runScript = "bash";
}).env