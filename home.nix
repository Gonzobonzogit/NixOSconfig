{config, pkgs, inputs, ... }:
{
xdg.configFile."quickshell/noctalia-shell".source = 
	"${inputs.noctalia.packages.${pkgs.system}.default}/share/noctalia-shell";

#xdg.configFile."noctalia/settings.json".source = 
#	(pkgs.formats.json{ }).generate "settings.json"
#	 (import ./noctalia-settings.nix { });

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
        file = "share/zsh-autocomplete/zsh-autocomplete.plugin.zsh";
      }
      {
        name = "zsh-autopair";
        src = pkgs.zsh-autopair;
        file = "share/zsh/zsh-autopair/autopair.zsh";
      }
      {
      	name = "zsh-autosuggestions";
      	src = pkgs.zsh-autosuggestions;
      	file = "share/zsh-autosuggestions/zsh-autosuggestions.sh";
      }
      {
      	name = "zsh-syntax-highlighting";
      	src = pkgs.zsh-syntax-highlighting;
      	file = "share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh";
      }
      {
      	name = "zsh-completions";
      	src = pkgs.zsh-completions;
      	file = "share/zsh/plugins/nix/nix-zsh-completions.plugin.zsh";
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
