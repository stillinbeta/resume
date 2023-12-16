{ pkgs ? import <nixpkgs> { } }:
pkgs.mkShell {
  buildInputs = [
    pkgs.gnumake
    ((pkgs.texlive.combine {
      inherit (pkgs.texlive)
        scheme-small
        enumitem;
    }))
  ];
}
