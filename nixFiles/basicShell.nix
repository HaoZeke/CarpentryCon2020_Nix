{ pkgs ? import <nixpkgs> { }, mkShell ? pkgs.mkShell, }:

mkShell rec {
  buildInputs = with pkgs; [ git vim nano ];

  shellHook = ''
    export PATH="$PWD/node_modules/.bin/:$PATH"
    export NODE_ENV=development
    export TERM=xterm-256color
  '';
}
