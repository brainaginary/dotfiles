# custom functions
source ~/.zsh_config/funcs.zsh

# history
# Set the maximum number of lines in the history file
HISTSIZE=1000
# Set the maximum number of lines to save in the in-memory history list
SAVEHIST=1000

display_random_quote

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source ~/powerlevel10k/powerlevel10k.zsh-theme #custom_zsh_prompt
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export QT_QPA_PLATFORMTHEME=qt5ct

# colorcoding when listing 
export LS_OPTIONS='--color=auto'
eval "$(dircolors -b)"
alias ls='ls $LS_OPTIONS'


# open pulseaudio-equalizer, which has a bad name
alias pulseaudio-equalizer='qpaeq'
alias EQ='qpaeq'

# fast navigation to folders
alias etudemain='nvim ~/latex/kaizen/main.tex'
alias etude='cd ~/mentalEtudes; ls'
alias cpgit='cd ~/GitHub/Competitive-Programming/; ls -a'
alias github='cd ~/GitHub'
alias latex='cd;cd latex'
alias prog='cd;cd programming'
alias cprog='cd;cd programming/comp_prog'
alias temp='nvim ~/latex/temp/temp.tex'
alias home='cd'
alias cptemp='cd ~/programming/cptemp'

	# to be deprecated soon
	alias kaizenmain='nvim ~/latex/kaizen/main.tex'
	alias kaizen='cd ~/latex/kaizen; ls -d */'

# restart ntp (windows messes up system time)
alias timecheck='systemctl restart systemd-timesyncd'

# yt-dlp
alias download='yt-dlp'
alias mp3download='yt-dlp -x --audio-format mp3'

# command correction
eval $(thefuck --alias)

