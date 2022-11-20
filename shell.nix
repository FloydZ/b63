with import <nixpkgs> {};
let
  my-python = pkgs.python3;
  python-with-my-packages = my-python.withPackages (p: with p; [
  ]);

in
{ pkgs ? import <nixpkgs> {} }:
stdenv.mkDerivation {
  name = "b63";
  src = ./.;
  buildInputs = [ 
  	python-with-my-packages
	git
	gnumake
	cmake
	clang
	jemalloc
  ];
}
