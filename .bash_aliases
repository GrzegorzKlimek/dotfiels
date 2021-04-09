###############################From original bashrc##############################

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='exa --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi
# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
# some more ls aliases
alias ll='ls -lF'
alias la='ls -alF'

##############################My aliases########################################

#build,compile and debug projects
spring_profile="devonline-grzesiek"
HOME_DIR="/home/frezer02"
REPOS_DIR="repos"
alias tunnel-spotik="ssh -L 3700:10.0.0.20:3306 -L 9200:10.0.0.21:9200 -L 9300:10.0.0.21:9300 grzegorz@bot.spotik.bot1984.net"
alias run-bookbot=" mvn clean spring-boot:run -Dspring-boot.run.profiles=devonline-greg"
alias run-lolhub="mvn spring-boot:run -Dspring-boot.run.profiles=$spring_profile,frontend -Dfrontend"
alias run-lolhub-local="mvn spring-boot:run -Dspring-boot.run.profiles=dev-grzesiek,frontend -Dfrontend"
alias debug-lolhub="mvn spring-boot:run -Dspring-boot.run.profiles=$spring_profile,frontend -Dfrontend -P debug"
alias debug-lolhub-devonline="mvn spring-boot:run -Dspring-boot.run.profiles=$spring_profile,frontend -Dfrontend -P debug"
alias debug-bookbot="mvnDebug clean spring-boot:run -Dspring-boot.run.profiles=$spring_profile"
alias deploy-bookbot="cp target/bookbot-0.1.war root@readow:/opt/tomcat/apache-tomcat-8.5.8/webapps/bookbot.war"
alias run-lolhub-full="mvn spring-boot:run -Dspring-boot.run.profiles=dev"
alias run-b61="mvn clean package -Pfrontend -Dmaven.test.skip=true"

#other aliases
alias zolta="cat $HOME_DIR/Pictures/ascii/zolta.txt"

alias logout-plasma="qdbus org.kde.ksmserver /KSMServer logout 0 3 3"
alias restart-plasma="kquitapp5 plasmashell && kstart5 plasmashell"
alias start-plasma="kstart plasmashell"
alias polkit-kde-start="/usr/lib/x86_64-linux-gnu/libexec/polkit-kde-authentication-agent-1 &"
alias lock-screen-and-hibernate="qdbus org.freedesktop.ScreenSaver /ScreenSaver Lock && sudo hibernate"

alias pause-notifications="notify-send \"DUNST_COMMAND_PAUSE\""
alias resume-notifications="notify-send \"DUNST_COMMAND_RESUME\""

alias ebashrc="vim ~/.bashrc"
alias ezshrc="vim ~/.zshrc"
alias egitrc="vim ~/.gitconfig"
alias envim="vim ~/.config/nvim/init.vim"
alias ehosts="sudoedit /etc/hosts"
alias cbashrc="source ~/.bashrc"
alias efstab="sudoedit /etc/fstab"
alias ealiases="vim ~/.bash_aliases"
alias edns="sudoedit /etc/resolvconf/resolv.conf.d/head"
alias ei3="vim ~/.config/i3/config"
alias etmux="vim .tmux.conf"
alias sudovim="sudoedit"
alias svim="sudoedit"
# alias vi="vim"
alias e="editor"

alias lock-screen="i3lock-fancy"

alias up=". cdup"
alias cpwd="pwd | tr -d '\n' | copy-to-clipboard"
alias scanrootfs="sudo ncdu  --exclude=/media --exclude=/run --exclude=/home --exclude=/tmp --exclude=/proc --exclude=/mnt /"
alias df='df -x"squashfs"'
alias copy-to-clipboard="xclip -selection c"
alias prettyjson="python -m json.tool"
alias cls="clear"
alias c="clear"
alias date-now="date '+%F-%T'"

alias config="sudo update-alternatives --config"
alias config-install="sudo update-alternatives --install"
alias config-remove="sudo update-alternatives --remove"
alias show-manually-installed="comm -23 <(apt-mark showmanual | sort -u) <(gzip -dc /var/log/installer/initial-status.gz | sed -n 's/^Package: //p' | sort -u)"

alias mount-mng="sudo mount -t  cifs -o username=root,password=libreelec,gid=frezer02,uid=frezer02 //pi/WD500N/ /media/frezer02/MnG"
alias mount-media="sudo mount -t  cifs -o username=root,password=libreelec,gid=frezer02,uid=frezer02 //pi/MEDIA/ /media/frezer02/MEDIA"
alias mount-vianova="curlftpfs daxrcokbom:Stachu_klimek_16@s127.cyber-folks.pl /media/frezer02/vianova"
alias unmount-cifs="sudo umount -a -t cifs -l"

alias p="ping wp.pl"
alias nr="sudo service network-manager restart"
alias restart-dns="sudo service resolvconf restart"

alias io="iiyama-only.sh"
alias lo="laptop-screen-only.sh"
alias md="mirror-displays.sh"

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

alias loadnvm="source ~/scripts/helpers/load-node.sh"
alias loadconda="source ~/scripts/helpers/load-conda.sh"

alias new="tmux new -s"
alias ttsession="tmux new -A -s"
alias attach="tmux attach -t"

alias poweroff="sudo poweroff"
alias hibernate="sudo hibernate"

alias dck-lolhub="docker run -p:3306:3306 --name lolhub-local -e MYSQL_ROOT_PASSWORD=7PeqzoDepPE6VP -d mysql:latest"

alias btc="curl pln.rate.sx/btc"
alias 1btc="curl pln.rate.sx/1BTC"
alias xmr="curl pln.rate.sx/xmr"
alias 1xmr="curl pln.rate.sx/1XMR"
alias crypto="curl pln.rate.sx"

alias sai="sudo apt install"
alias ssi="sudo snap install"
alias ffi="flatpak install"
alias sar="sudo apt remove"
alias ssr="sudo snap remove"
alias ffr="flatpak remove"

alias dgit="git --git-dir=$HOME/.cfg/ --work-tree=$HOME"
alias gamend="git add -u && git commit --amend --no-edit"
alias gcommit="git add -u && git commit"
alias gstatus="git status"
alias glog="git lg -15"
alias gdiff="git diff HEAD"

alias noErrorOutput="2> /dev/null"
