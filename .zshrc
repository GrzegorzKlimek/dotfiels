# setopt histignorealldups sharehistory
unsetopt share_history


# Use emacs keybindings even if our EDITOR is set to vi
bindkey -e

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.



# source aliases
if [ -f ~/.bash_aliases ]; then
    source ~/.bash_aliases
else
    print "404: ~/.bash_aliases not found."
fi

# some more ls aliases
alias ls='exa'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'


#Auto jump
 . /usr/share/autojump/autojump.zsh

 # set enviroment variables
export JAVA_HOME="/usr/"
export PATH="$HOME/scripts:$HOME/scripts/i3:$HOME/.screenlayout:$PATH:$HOME/Applications:$HOME/.local/share/kservices5/ServiceMenus:$HOME/.cargo/bin"
export XDG_CURRENT_DESKTOP=KDE
export EDITOR="vim"

# Enable colors and change prompt:
autoload -U colors && colors	# Load colors

# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }
# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats ' (%b)'
# Set up the prompt (with git branch name)
setopt PROMPT_SUBST
# PROMPT='%n in ${PWD/#$HOME/~} ${vcs_info_msg_0_} > '
NEWLINE=$'\n'
PS1='%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%c%{$fg[red]%}]%{$fg[green]%}${vcs_info_msg_0_} %{$reset_color%} ${NEWLINE} ~ > '
setopt autocd		# Automatically cd into typed directory.
stty stop undef		# Disable ctrl-s to freeze terminal.


bindkey "\e[1;3C" forward-word
bindkey "\e[1;3D" backward-word
  
# plugins
export ZSH_PLUGINS_HOME="$HOME/.local/share/zsh/plugins" 
source $ZSH_PLUGINS_HOME/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $ZSH_PLUGINS_HOME/zsh-completions/zsh-completions.plugin.zsh
source $ZSH_PLUGINS_HOME/conda-zsh-completion/conda-zsh-completion.plugin.zsh
source $ZSH_PLUGINS_HOME/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh
# source $ZSH_PLUGINS_HOME/zsh-vi-mode/zsh-vi-mode.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH

  autoload -Uz compinit
  compinit
fi

# print neofetch on startup
# neofetch
