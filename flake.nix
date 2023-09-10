{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };
  outputs = { self, nixpkgs, flake-utils, ...}: 
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
      in {
        packages = rec {
          studnetze-website = pkgs.stdenv.mkDerivation {
            pname = "studnetze-website";
            version = "0.0.1";

            src = ./.;

            buildInputs = [
              pkgs.python3.pkgs.mkdocs-material
            ];

            buildPhase = ''
              python3 -m mkdocs build
            '';

            installPhase = ''
              mkdir -p $out
              cp -r ./site/* $out/
            '';
          };
          default = studnetze-website;
        };
      }
    );
}
