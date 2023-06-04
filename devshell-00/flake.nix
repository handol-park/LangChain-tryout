{
  # flake-parts requires ~nixpkgs~ in inputs.
  inputs.nixpkgs.url = "nixpkgs";

  outputs = inputs@{ flake-parts, ... }:
    flake-parts.lib.mkFlake { inherit inputs; } {
      systems = [ "aarch64-darwin" ];
      perSystem = { pkgs, ... }: {
        devShells.default = pkgs.mkShell {
          buildInputs = [ pkgs.poetry ];
        };
      };
    };
}
