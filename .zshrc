# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
unsetopt beep
bindkey -e
zstyle :compinstall filename '/home/andrew/.zshrc'
autoload -Uz compinit
compinit -D

# Plugins
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source /home/andrew/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Customization
PROMPT="%F{red}%n%f%F{blue}@%f%F{red}%m%f[%~]%F{white}$%f "
alias ls='ls --color=auto'
    
# Autostart startx
if [[ -z $DISPLAY  ]] && [[ $(tty) = /dev/tty1  ]]; then 
      exec startx &>/dev/null 
fi

