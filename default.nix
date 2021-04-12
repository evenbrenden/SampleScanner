with import (builtins.fetchTarball {
  name = "nixpkgs-unstable-2021-04-09";
  url = "https://github.com/nixos/nixpkgs/archive/c2f5468cec517043ff9147855d45e849c742ed41.tar.gz";
  sha256 = "0y192jq84447jsl8py7k6ikcj9mz68b30ydh19injkg25bp6z6kj";
}) {};
let
  pythonEnv = python39.withPackages (ps: [
    ps.pyaudio
    ps.python-rtmidi
    ps.numpy
    ps.tqdm
    ps.tabulate
    ps.autopep8
    ps.pep8
    ps.pytest
  ]);
in mkShell {
  buildInputs = [
    pythonEnv
    ffmpeg
  ];
}
