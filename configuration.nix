# Edit this configuration file to define what should be installed on
# your system. Help is available in the configuration.nix(5) man page, on
# https://search.nixos.org/options and in the NixOS manual (`nixos-help`).

{ config, lib, pkgs, inputs, ... }:
#let
#	home-manager = builtins.fetchTarball "https://github.com/nix-community/home-manager/archive/release-25.11.tar.gz";
#in	
{
  imports =
   [ # Include the results of the hardware scan.
    ./hardware-configuration.nix
#    (import "${home-manager}/nixos")
   ];

   home-manager.useUserPackages = true;
   home-manager.useGlobalPkgs = true;
   home-manager.backupFileExtension = "backup";
   home-manager.users.gonzo = import ./home.nix;
   home-manager.extraSpecialArgs = { inherit inputs; };



  nixpkgs.config.allowUnfree = true;

  # Use the systemd-boot EFI boot loader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.kernelPackages = pkgs.linuxPackages_latest;



   networking.hostName = "NERVmobile"; # Define your hostname.
   nix.settings.experimental-features = [ "nix-command" "flakes"];
  # Configure network connections interactively with nmcli or nmtui.
   networking.networkmanager.enable = true; 
   networking.wireless.enable = true; #Will enable WIFI when ready
  # Set your time zone.
   time.timeZone = "America/Chicago";



  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

  # Select internationalisation properties.
  # i18n.defaultLocale = "en_US.UTF-8";
  # console = {
  #   font = "Lat2-Terminus16";
  #   keyMap = "us";
  #   useXkbConfig = true; # use xkb.options in tty.
  # };

  # Enable the X11 windowing system.
  # services.xserver.enable = true;

   services.xserver = {
	enable = true;
	displayManager.gdm.enable = true;
        desktopManager.gnome.enable = true;        
  };

  

   services.gnome = {
	core-apps.enable = true;
        core-developer-tools.enable = true;
        games.enable = true;

   };

	

  # Configure keymap in X11
  # services.xserver.xkb.layout = "us";
  # services.xserver.xkb.options = "eurosign:e,caps:escape";

  # Enable CUPS to print documents.
  # services.printing.enable = true;

  # Enable sound.
  # services.pulseaudio.enable = true;
  # OR
   services.pipewire = {
     enable = true;
     pulse.enable = true;
     alsa.enable = true;
     pulse.enable = true;
     wireplumber.enable = true;     
   };

  # Enable touchpad support (enabled default in most desktopManager).
   services.libinput.enable = true; 
   security.rtkit.enable = true;
 # Define a user account. Don't forget to set a password with ‘passwd’.

   users.users.gonzo = {
     isNormalUser = true;
     extraGroups = [ "wheel" ]; # Enable ‘sudo’ for the user.
     shell = pkgs.zsh;
     packages = with pkgs; [
       tree
     ];
   };






  programs.hyprland = {
        #Install from nixpkgs
	enable = true;
	#To enable Xwayland?
	xwayland.enable = true;	
        portalPackage = pkgs.xdg-desktop-portal-hyprland;
  };




  programs.hyprlock.enable = true;
  programs.firefox.enable = true;
  programs.zsh.enable = true;




  # List packages installed in system profile.
  # You can use https://search.nixos.org/ to find more packages (and options).



   environment.systemPackages = with pkgs; [
    nano 
    git
    spotify
    spotify-tray
    micro
    feh
    pkgs.fuzzel
    pkgs.networkmanagerapplet
    pkgs.brightnessctl
    pkgs.playerctl
    pkgs.grim
    pkgs.slurp
    pkgs.wl-clipboard
    pkgs.cliphist
    pkgs.appimage-run
    pkgs.mojave-gtk-theme
    pkgs.gnome-tweaks
    pkgs.gnome-keyring
    pkgs.gnome-keysign
    pkgs.gnome-video-effects
    pkgs.gnome-packagekit
    pkgs.gnome-icon-theme
    pkgs.gnome-software
    pkgs.gnote
    pkgs.bluez
    pkgs.gcc
    pkgs.mongodb
    pkgs.mongodb-tools
    pkgs.mongodb-compass
    pkgs.code-nautilus
    pkgs.amd-ucodegen
    pkgs.claude-code
    pkgs.ollama
    pkgs.ollama-cpu
    pkgs.ollama-rocm    
    pkgs.electron
    pkgs.protonmail-bridge
    pkgs.equicord
    pkgs.kitty
    pkgs.obsidian
    pkgs.figlet
    pkgs.neo-cowsay
    pkgs.lmstudio
    pkgs.nerd-fonts.hack
    pkgs.nerd-fonts._3270
    pkgs.nerd-fonts.noto
    pkgs.nerd-fonts.iosevka
    pkgs.gimp
    pkgs.asciiquarium-transparent
	pkgs.ascii-image-converter
    pkgs.asciinema
    pkgs.material-design-icons
    pkgs.sweet-folders
    pkgs.materialgram
    pkgs.arcticons-sans
    pkgs.marwaita-icons	
    pkgs.vscode
    pkgs.uwufetch
    pkgs.variety
    pkgs.librewolf
    pkgs.libreoffice
    pkgs.fprintd
    pkgs.fprintd-tod
    pkgs.man
    pkgs.manix
    pkgs.neovim
    pkgs.yaziPlugins.rsync
    pkgs.yaziPlugins.glow    
    pkgs.catppuccin
	pkgs.ayu-theme-gtk
    pkgs.ly
    pkgs.lyra-cursors
    pkgs.dracula-icon-theme
    pkgs.zafiro-icons
    pkgs.nixos-artwork.wallpapers.catppuccin-macchiato
    pkgs.emacsPackages.tab-line-nerd-icons
    pkgs.emacsPackages.frontside-javascript
    pkgs.typescript
    pkgs.wayland-bongocat
    pkgs.react-native-debugger
    pkgs.pgadmin4
    pkgs.postgrest
    pkgs.gtop
    pkgs.btop   
    pkgs.shittier
	pkgs.gearlever
    pkgs.nordzy-icon-theme
    pkgs.mullvad-vpn
    pkgs.mullvad
    pkgs.yazi
    pkgs.equibop
    pkgs.mpv
    pkgs.vlc
    pkgs.ffmpeg-full
    nodejs
    wget
    curl
    pkgs.emacs
    pkgs.emacsPackages.doom
    thunderbird
    discord
    emacs-all-the-icons-fonts     
    cmake
    pkgs.steam
    firefox-devedition
    librewolf
    ff2mpv
    keepassxc
    pkgs.hyprland
    pkgs.hyprland-qt-support
    pkgs.hypridle
    pkgs.hyprkeys
    pkgs.hyprviz
    pkgs.hyprpolkitagent
    pkgs.hyprland-protocols
    pkgs.hyprland-qtutils
    pkgs.hyprlock
    pkgs.hyprlauncher
    pkgs.hyprmon
   	pkgs.noctalia-qs
    pkgs.noctalia-shell
    xdg-desktop-portal-gnome
    zsh
    fastfetch
    rsync 
    gnome-extension-manager
    ghostty    
    ninja 
    meson
    go
    gimp
    lsd
    python3
    pkgs.oranchelo-icon-theme
    pkgs.whitesur-icon-theme
    pkgs.papirus-icon-theme 
  ];

  
 



  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  # programs.mtr.enable = true;
   programs.gnupg.agent = {
     enable = true;
     enableSSHSupport = true;
   };

  # List services that you want to enable:

  # Enable the OpenSSH daemon.
   services.openssh.enable = true;

  # Open ports in the firewall.
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  # Or disable the firewall altogether.
  # networking.firewall.enable = false;

  # Copy the NixOS configuration file and link it from the resulting system
  # (/run/current-system/configuration.nix). This is useful in case you
  # accidentally delete configuration.nix.
  # system.copySystemConfiguration = true;

  # This option defines the first version of NixOS you have installed on this particular machine,
  # and is used to maintain compatibility with application data (e.g. databases) created on older NixOS versions.
  #
  # Most users should NEVER change this value after the initial install, for any reason,
  # even if you've upgraded your system to a new NixOS release.
  #
  # This value does NOT affect the Nixpkgs version your packages and OS are pulled from,
  # so changing it will NOT upgrade your system - see https://nixos.org/manual/nixos/stable/#sec-upgrading for how
  # to actually do that.
  #
  # This value being lower than the current NixOS release does NOT mean your system is
  # out of date, out of support, or vulnerable.
  #
  # Do NOT change this value unless you have manually inspected all the changes it would make to your configuration,
  # and migrated your data accordingly.
  #
  # For more information, see `man configuration.nix` or https://nixos.org/manual/nixos/stable/options#opt-system.stateVersion .
  system.stateVersion = "25.11"; # Did you read the comment?

}

