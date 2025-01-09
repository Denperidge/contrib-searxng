{ pkgs ? import <nixpkgs> {} }:

/*
nix shell for development usage
1. run `nix-shell`
2. run `make run` (or any other make scripts)
Done!

Note that this does not support everything as of yet.
Notably, `make test` does not run fully
*/

pkgs.mkShell {
  nativeBuildInputs = with pkgs; [
    gnumake
    git
    python3
  ];

  # Fixes libstdc++ not found
  LD_LIBRARY_PATH = "${pkgs.stdenv.cc.cc.lib}/lib";
}