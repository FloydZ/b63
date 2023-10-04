with import <nixpkgs> {};
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
