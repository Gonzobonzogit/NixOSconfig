{config, pkgs, ... }:
{
home.username = "gonzo";
home.homeDirectory = "/home/gonzo";
home.stateVersion = "25.11";

	programs.zsh = {
		enable = true;
shellAliases = {
			 resetServer="sudo pkill ollama && ollama serve";
		
		
			#Nano & Shell aliases
			 edit="sudo micro";
			 rezsh="source ~/.zshrc";
			 suazi="sudo yazi";
			 server="npx live-server";
			 rei="fastfetch -c /home/gonzo/Downloads/31.jsonc";
			 hypredit="sudo micro /home/gonzo/.config/hypr/hyprland";
			 zshedit="sudo micro /home/gonzo/.zshrc";
		
			#Package manager aliases
			updateOS = "sudo nixos-rebuild switch";
			editOS = "sudo micro /etc/nixos/configuration.nix";

			
			ls="lsd";
			ll="lsl -alF";       # Detailed list with file types
			la="lsd -A";         # List all except . and ..
			l="lsd -CF";         # Quick compact listing
			".."="cd ..";         # Go up one directory
			"..."="cd ../..";     # Go up two directories
			"...."="cd ../../.."; # Go up three directories
			r="reset";           # Fast terminal reset
			c="clear";          # Fast clear screen
			gs="git status";
			ga="git add .";
			gc="git commit -m";
			 gp="git push";
			nano="sudo nano";            # Or 'nano' if that’s your editor
			py="python3";       # Run Python quickly
			act="source venv/bin/activate"; # Activate virtualenv fast
			please="sudo";      # Because manners matter
			weather="curl wttr.in";  # Quick terminal weather report
			shrug="echo '¯\_(ツ)_/¯'";
			create="touch";
			em="emacs";
			startdb="sudo systemctl start postgresql";
			jellyfin="sudo systemctl start --now jellyfin.service";
		};
	
			oh-my-zsh = {
			enable = true;
			theme = "darkblood";
			plugins = [
				"git" 
				"sudo"
				"z"
			];
	  };

	   plugins = [
      {
        name = "zsh-autocomplete";
        src = pkgs.zsh-autocomplete;
        file = "/nix/store/px608nzlv9qdkrzmsz2whn12kqqfd3r6-zsh-autocomplete-25.03.19/share/zsh-autocomplete/zsh-autocomplete.plugin.zsh";
      }
      {
        name = "zsh-autopair";
        src = pkgs.zsh-autopair;
        file = "/nix/store/ab5lrhq22bpc60xzar0xs1dxwq9wq5s4-zsh-autopair-1.0-unstable-2024-07-14/share/zsh/zsh-autopair/autopair.zsh";
      }
      {
      	name = "zsh-autosuggestions";
      	src = pkgs.zsh-autosuggestions;
      	file = "/nix/store/vsif3vby6r992pnbc0j0ynafrdgsb2pq-zsh-autosuggestions-0.7.1/share/zsh-autosuggestions/zsh-autosuggestions.sh";
      }
      {
      	name = "zsh-syntax-highlighting";
      	src = pkgs.zsh-syntax-highlighting;
      	file = "/nix/store/daw80f1pj1j6ic96zgswfvp30shxz9wl-zsh-syntax-highlighting-0.8.0/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh";
      }
      {
      	name = "zsh-completions";
      	src = pkgs.zsh-completions;
      	file = "/nix/store/436bj9csl3qjkigwjgis770w8g4gg1wb-nix-zsh-completions-0.5.1/share/zsh/plugins/nix/nix-zsh-completions.plugin.zsh";
      }
    ];
    };
		home.packages = with pkgs; [
			bat
			plocate
			lsd
		];

#programs.noctalia-shell = {
	#enable = true;
	#settings ={};
#};
			
}
