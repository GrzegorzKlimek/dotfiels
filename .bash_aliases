spring_profile="devonline-greg"
HOME_DIR="/home/frezer02"
REPOS_DIR="repos"
alias tunnel-spotik="ssh -L 3700:10.0.0.20:3306 -L 9200:10.0.0.21:9200 -L 9300:10.0.0.21:9300 grzegorz@bot.spotik.bot1984.net"
alias run-bookbot="mvn clean spring-boot:run -Dspring-boot.run.profiles=$spring_profile"
alias run-lolhub="mvn spring-boot:run -Dspring-boot.run.profiles=dev-grzesiek,frontend -Dfrontend"
alias run-lolhub-devonline="mvn spring-boot:run -Dspring-boot.run.profiles=devonline-grzesiek,frontend -Dfrontend"
alias debug-lolhub="mvn spring-boot:run -Dspring-boot.run.profiles=dev,frontend -Dfrontend -P debug"
alias debug-bookbot="mvnDebug clean spring-boot:run -Dspring-boot.run.profiles=$spring_profile"
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

alias lock-screen="i3lock-fancy"

alias up=". cdup"
alias cpwd="pwd | tr -d '\n' | copy-to-clipboard"
alias scanrootfs="sudo ncdu  --exclude=/media --exclude=/run --exclude=/home /"
alias copy-to-clipboard="xclip -selection c"
alias prettyjson="python -m json.tool"
alias cls="clear"
alias c="clear"
alias date-now="date '+%F-%T'"
alias dotfiles-git="/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME"

alias config="sudo update-alternatives --config"
alias config-install="sudo update-alternatives --install"
alias config-remove="sudo update-alternatives --remove"
alias show-manually-installed="comm -23 <(apt-mark showmanual | sort -u) <(gzip -dc /var/log/installer/initial-status.gz | sed -n 's/^Package: //p' | sort -u)"

alias mount-media="sudo mount -t  cifs -o username=root,password=libreelec,gid=frezer02,uid=frezer02 //pi/MEDIA/ /media/frezer02/MEDIA"
alias unmount-cifs="sudo umount -a -t cifs -l"

alias p="ping wp.pl"
alias nr="sudo service network-manager restart"
alias restart-dns="sudo service resolvconf restart"
alias network-manager-restart="sudo service network-manager restart"

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
