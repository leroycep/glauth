{ pkgs
, buildGoApplication ? pkgs.buildGoApplication
}:

buildGoApplication {
  pname = "glauth";
  version = "2.3.0";
  pwd = ./.;
  src = ./.;
  modules = ./gomod2nix.toml;

  doCheck = false;
}
