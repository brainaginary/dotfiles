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
	cd
	case "$1" in 
		nvim|neovim|vim|vi)
			nvim .config/nvim/init.vim
			;;
		zsh|shell|.zshrc)
			echo "General or functions"
			echo "expected input: g,f"
			read -r input
				case "$input" in
					g|general|General)
						nvim .zshrc
						;;
					f|funcs|Functions)
						nvim .zsh_config/funcs.zsh
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
		polybar|bar)
			nvim .config/polybar/config.ini
			;;
		picom)
			nvim .config/picom/picom.conf
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

wall() {
	if [ $# -eq 0 ]; then
    # If no argument is given, choose a random image from a directory
		images_dir="$HOME/wp"
		random_image=$(ls "$images_dir" | shuf -n 1)
		background_path="$images_dir/$random_image"
	else
		background_path="$1"

		if [ ! -f "$background_path" ]; then
			echo "File invalid"
			return
		fi
	fi
	
	feh --bg-fill "$background_path"
}

mode() {
  case "$1" in
    "a" | "airplane")
      nmcli networking off
      echo "Airplane Mode turned on."
      ;;
    "off" | "normal")
      nmcli networking on
      echo "Airplane Mode turned off."
      ;;
    *)
      echo "Invalid command. Please use 'a' or 'airplane' for on, 'off' or 'normal' for off."
      ;;
  esac
}

function master() {
  echo "Custom Commands Cheatsheet:"
  echo "---------------------------"
  echo "1. mode [a|airplane|off|normal]"
  echo "2. display_random_quote [|lightning]"
  echo "3. wall [|path/to/img]"
  echo "4. termstart"
  echo "5. vpn"
  echo "6. conf"
}







