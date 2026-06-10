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
  localsend
  fastfetch
  waybar
  dunst
  awww
  brightnessctl
  seahorse
  libsecret
  hyprpolkitagent
  hyprlauncher
  onlyoffice-desktopeditors
  gemini-cli
  playerctl
  wl-clipboard
  ani-cli
  mpv
  ];
  
  # List packages installed in system profile. To search, run:
  # $ nix search wget

  # Install firefox.
  programs.firefox.enable = true;

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;
  
  programs.hyprland = {
    enable = true;
    withUWSM = true;
    xwayland.enable = true;
  };
  
  # WAYBAR
  programs.waybar = {
  enable = true;
  };
}