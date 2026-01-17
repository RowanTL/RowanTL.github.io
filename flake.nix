{
  description = "A simple environment with Zola";

  inputs = {
    # You can pin this to a specific commit or tag if needed
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
  };

  outputs = { self, nixpkgs }:
    let
      # Helper to support multiple systems (Linux, Mac, M1 Mac, etc.)
      systems = [ "x86_64-linux" "aarch64-linux" "x86_64-darwin" "aarch64-darwin" ];
      forAllSystems = nixpkgs.lib.genAttrs systems;
    in
    {
      devShells = forAllSystems (system:
        let
          pkgs = nixpkgs.legacyPackages.${system};
        in
        {
          default = pkgs.mkShell {
            packages = [
              pkgs.jekyll
            ];

            # Optional: Add a hook to print a message when entering the shell
            shellHook = ''
              echo "Welcome to the Jekyll environment!"
              echo "jekyll version: $(jekyll --version)"
            '';
          };
        });
    };
}
