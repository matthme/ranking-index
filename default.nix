let
  holonixPath = builtins.fetchTarball "https://github.com/holochain/holonix/archive/843c86d5871df8de2d9a02bdd797ad6f33fa5be5.tar.gz";
  holonix = import (holonixPath) {
    holochainVersionId = "v0_0_126";
  };
  nixpkgs = holonix.pkgs;
in nixpkgs.mkShell {
  inputsFrom = [ holonix.main ];
  packages = with nixpkgs; [
    # additional packages go here
    nodejs-16_x
  ];
}