#!/bin/bash

OS=$(cat /etc/os-release | head -n 1 | awk -F "=" '{print $2}' | tr -d '"' | tr '[:upper:]' '[:lower:]')

# install neede packages
if [ "$OS" = "ubuntu" ]; then
    echo "os is ubuntu"
    sudo apt install -y git fzf autojump nvim vim ncdu htop
fi

if [ "$OS" = "freebsd" ]; then
    pkg install -y git fzf autojump nvim vim ncdu htop
    echo "os is freebsd"
fi


#insatll nvm nodejs, npm and formatters for vim
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
source ~/.bashrc
nvm install 13.11.0
npm i -g typescript-formatter
npm i -g js-beautify

# download dotfiles
echo "alias df-git='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'" >> ~/.bashrc
alias df-git='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
echo ".cfg" >> .gitignore
git clone --bare git@github.com:GrzegorzKlimek/dotfiles.git $HOME/.cfg
#backup old files
mkdir -p .config-backup && \
/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME checkout 2>&1 | egrep "\s+\." |  \
while read file; do
    mkdir --parents .config-backup/$file
    mv $file .config-backup/$file
done

#restore config
/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME checkout

#install zsh plugins
export ZSH_PLUGINS_HOME="$HOME/.local/share/zsh/plugins" 
mkdir --parents $ZSH_PLUGINS_HOME
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_PLUGINS_HOME/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-completions.git $ZSH_PLUGINS_HOME/zsh-completions
git clone https://github.com/esc/conda-zsh-completion.git $ZSH_PLUGINS_HOME/conda-zsh-completion
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_PLUGINS_HOME/zsh-autosuggestions

