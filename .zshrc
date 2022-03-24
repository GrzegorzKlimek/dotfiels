# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# setopt histignorealldups sharehistory
unsetopt share_history


# Use emacs keybindings even if our EDITOR is set to vi
bindkey -e

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

#enable vi mode
bindkey -v
export KEYTIMEOUT=1

# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char 2>/dev/null
bindkey -M menuselect 'j' vi-down-line-or-history 2>/dev/null
bindkey -M menuselect 'k' vi-up-line-or-history 2>/dev/null
bindkey -M menuselect 'l' vi-forward-char 2>/dev/null
bindkey -M menuselect 'left' vi-backward-char 2>/dev/null
bindkey -M menuselect 'down' vi-down-line-or-history 2>/dev/null
bindkey -M menuselect 'up' vi-up-line-or-history 2>/dev/null
bindkey -M menuselect 'right' vi-forward-char 2>/dev/null



# Change cursor shape for different vi modes.
function zle-keymap-select {
  if [[ ${KEYMAP} == vicmd ]] ||
     [[ $1 = 'block' ]]; then
    echo -ne '\e[1 q'
  elif [[ ${KEYMAP} == main ]] ||
       [[ ${KEYMAP} == viins ]] ||
       [[ ${KEYMAP} = '' ]] ||
       [[ $1 = 'beam' ]]; then
    echo -ne '\e[5 q'
  fi
}
zle -N zle-keymap-select

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

#Auto jump
 . /usr/share/autojump/autojump.zsh

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
PS2=' ~ > '
setopt autocd		# Automatically cd into typed directory.
stty stop undef		# Disable ctrl-s to freeze terminal.

bindkey "\e[1;5D" backward-word
bindkey "\e[1;5C" forward-word
  
# plugins
export ZSH_PLUGINS_HOME="$HOME/.local/share/zsh/plugins" 
source $ZSH_PLUGINS_HOME/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $ZSH_PLUGINS_HOME/zsh-completions/zsh-completions.plugin.zsh
source $ZSH_PLUGINS_HOME/conda-zsh-completion/conda-zsh-completion.plugin.zsh
source $ZSH_PLUGINS_HOME/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh

source /usr/share/doc/fzf/examples/key-bindings.zsh

if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH

  autoload -Uz compinit
  compinit
fi

# source functions
if [ -f ~/.shell_functions.sh ]; then
    source ~/.shell_functions.sh
else
    print "404: ~/.shell_functions.sh not found."
fi
#
# edit command in vim 
autoload -U edit-command-line

zle -N edit-command-line
bindkey '^xe' edit-command-line


# function expand-alias() {
#   zle _expand_alias
#     zle self-insert
#   }
# zle -N expand-alias
# bindkey -M main ' ' expand-alias

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/frezer02/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/frezer02/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/frezer02/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/frezer02/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
