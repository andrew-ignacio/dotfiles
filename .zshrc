# Lines configured by zsh-newuser-install
HISTFILE=~/.config/zsh/.histfile
HISTSIZE=1000
SAVEHIST=1000
unsetopt beep
bindkey -e
zstyle :compinstall filename '/home/andrew/.zshrc'
autoload -Uz compinit
compinit -D

# Plugins
source ~/.config/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.config/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Customization
PROMPT="%F{red}%n%f%F{blue}@%f%F{red}%m%f[%~]%f$%f "
alias ls='ls --color=auto'
    
# Autostart startx
if [[ -z $DISPLAY  ]] && [[ $(tty) = /dev/tty1  ]]; then 
      exec startx &>/dev/null 
fi

