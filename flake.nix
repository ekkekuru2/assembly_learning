{
  description = "Assembly";
  # ちゃんとNix言語を覚えて作りたい環境を意のままに作れるようになるべきだが、大抵はとりあえずpackagesの入ったシェルを作れれば良いことも多いのでこのようなテンプレートのテンプレートを作ってみる

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs { inherit system; };
      in {
        devShell = pkgs.mkShell {
          packages = with pkgs; [
            nasm
            gcc
            gnumake
          ];
        };
      });
}
