# protonvpn in terminal
vpn() {
    case "$1" in
        c|connect)
            protonvpn-cli c
            ;;
        d|disconnect)
            protonvpn-cli d
            ;;
        s|status)
            protonvpn-cli s
            ;;
        h|help)
            echo "arguments:"
            echo " c, connect        Connect to VPN."        
            echo " d, disconnect    Disconnect from VPN."
            echo " s, status        VPN status."
            ;;
        *)
            echo "Error: Invalid argument. Use 'vpn h' to see available commands."
            ;;
    esac
}

# jump to config file
conf(){
	case "$1" in 
		nvim|neovim|vim|vi)
			nvim .config/nvim/init.vim
			;;
		zsh|shell|.zshrc)
			echo "General, Functions, or Aliases?"
			echo "expected input: g,f,a"
			read -r input
				case "$input" in
					g|general|General)
						nvim .zshrc
						;;
					f|funcs|Functions)
						nvim .zsh_config/funcs.zsh
						;;
					a|aliases|Aliases)
						nvim .zsh_config/aliases.zsh
						;;
				esac
			;;
		kitty|terminal|term)
			nvim .config/kitty/kitty.conf
			;;
		bspwm|wm)
			nvim .config/bspwm/bspwmrc
			;;
		keybindings|bind|sxhkd)
			nvim .config/sxhkd/sxhkdrc
			;;
		help|h)
			echo "options: nvim, zsh, kitty, bspwm, keybindings"
			echo "To see all options -> 'conf zsh' -> 'f' -> search for "conf" function"
			;;
		*)
			echo "Invalid command; do 'conf h' for help"
			;;
	esac		
}

# exactly what it sounds, with easter egg input "lightning"
display_random_quote() {
    if [ "$1" = "lightning" ]; then

		bold=$(tput bold)
		reset=$(tput sgr0)
		pink_purple=$(tput setaf 207)
		purple=$(tput setaf 141)
	
		text="There will always be those who dare to brave the ${purple}lightning's${reset} ${pink_purple}${bold}glow${reset}"
    
		echo -e "$text${reset}"
	else
        quotes=(
            "Grace in simplicity, Power in minimalism"
            "KISS: Keep it Simple, Stupid"
            "The Arch Way: Simple, Elegant, and always in Control"
            "The quieter you become, the more you are able to hear"
        )

        # Generate a random index
        random_index=$((RANDOM % 4))

        # Display the random quote
        echo "${quotes[$random_index + 1]}"
    fi
}

# random terminal start command
termstart(){
	random_index=$((RANDOM % 2))
		
	if [ "$random_index" -eq 1 ]; then
		neofetch
	else 
		display_random_quote
		echo ""
	fi
}

