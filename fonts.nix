{ pkgs, apple-fonts, ... }:

{
  fonts.packages = [
    apple-fonts.packages.${pkgs.system}.ny
  ];
}