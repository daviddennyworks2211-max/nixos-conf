{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
  vim
	wget
	vscode
	obsidian
	chromium
	git
	tauon
  fish
  zathura
	zathuraPkgs.zathura_pdf_mupdf
  keepassxc
  kitty
  ];
  
  # List packages installed in system profile. To search, run:
  # $ nix search wget
}