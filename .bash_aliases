spring_profile="devonline-greg"
HOME_DIR="/home/frezer02"
REPOS_DIR="repos"
USER="frezer02"
alias spotik-ws="cd $HOME_DIR/Documents/$REPOS_DIR/eclipse-workspaces/spotik-ws"
alias lolhub-front="cd $HOME_DIR/Documents/$REPOS_DIR/eclipse-workspaces/spotik-ws/lolhub/src/main/frontend"
alias lolhub="cd $HOME_DIR/Documents/$REPOS_DIR/eclipse-workspaces/spotik-ws/lolhub"
alias morai="cd $HOME_DIR/Documents/morai"
alias documents="cd $HOME_DIR/Documents"
alias tunnel-spotik="ssh -L 3700:10.0.0.20:3306 -L 9200:10.0.0.21:9200 -L 9300:10.0.0.21:9300 grzegorz@bot.spotik.bot1984.net"
alias tunnel-adminmorai="ssh -L 3600:127.0.0.1:3306 root@admin-morai"
alias tunnel-ponzie="ssh -L 3800:127.0.0.1:3800 grzesiek@ponzie.info.tm"
alias tunnel-bsd="ssh -L 3900:127.0.0.1:3800 root@p1402.pietryga.info -p 8822"
alias run-bookbot="mvn clean spring-boot:run -Dspring-boot.run.profiles=$spring_profile"
alias run-simpleblw="mvn spring-boot:run -Dspring-boot.run.profiles=test"
alias run-lolhub="mvn spring-boot:run -Dspring-boot.run.profiles=dev-grzesiek,frontend -Dfrontend"
alias debug-lolhub="mvn spring-boot:run -Dspring-boot.run.profiles=dev,frontend -Dfrontend -P debug"
alias debug-bookbot="mvnDebug clean spring-boot:run -Dspring-boot.run.profiles=$spring_profile"
alias run-lolhub-full="mvn spring-boot:run -Dspring-boot.run.profiles=dev"
alias deploy-bookbot="deploy octawave target/bookbot-0.1.war bookbotdev.war"
alias deploy-amazonscraper="scp -P 8822 target/reddit-0.1-jar-with-dependencies.jar root@freebsd:/root/image_scrapping/"
alias spring-profile="-Dspring-boot.run.profiles"
alias run-b61="mvn clean package -Pfrontend -Dmaven.test.skip=true"
alias run-reddit-scrapper="mvn clean package exec:java"
#other aliases
alias copy-to-clipboard="xclip -selection c"
alias cclip="xargs echo -n | xclip -selection clipboard"
alias sshkodi="ssh pi@kodi-rpi"
alias sshnas="ssh pi@nas-rpi"
alias sshponzie="ssh grzesiek@ponzie"
alias sshbsd="ssh root@p1402.pietryga.info -p 8822"
alias sshola="ssh root@ola"
alias sshdeli="ssh root@deli"
alias sshadmin-morai="ssh root@admin-morai"
alias sshes1="ssh root@es1"
alias sshes2="ssh root@es2"
alias sshsasrec="ssh root@sasrec"
alias test-filetransfer="rsync --progress"
alias scanrootfs="sudo ncdu  --exclude=/media --exclude=/run --exclude=/home /"
alias softwareinstall="sudo apt-get install -y"
alias logout-plasma="qdbus org.kde.ksmserver /KSMServer logout 0 3 3"
alias sshspotik="ssh grzegorz@octawave"
alias sshlinode="ssh root@linode"
alias refresh-images="rm * ; cp ~/Documents/morai/book_covers.tar . && tar -xf book_covers.tar && rm book_covers.tar && mv book_covers/* . && rm -r book_covers"
alias countfiles="ls -1 | wc -l"
alias up=". cdup"
alias repos="cd $HOME_DIR/Documents/$REPOS_DIR"
alias ebashrc="vim ~/.bashrc"
alias ezshrc="vim ~/.zshrc"
alias egitrc="vim ~/.gitconfig"
alias envim="vim ~/.config/nvim/init.vim"
alias ei3="vim ~/.config/i3/config"
alias cbashrc="source ~/.bashrc"
alias ehosts="sudo vim /etc/hosts"
alias efstab="sudo vim /etc/fstab"
alias windows="cd /mnt/winpart/"
alias mng="cd /media/$USER/MnG"
alias samsung="cd /media/$USER/SAMSUNGHDD"
alias wd500="cd /media/$USER/WD500"
alias wsl="cd /mnt/winpart/Users/PC/AppData/Local/Packages/CanonicalGroupLimited.Ubuntu18.04onWindows_79rhkp1fndgsc/LocalState/rootfs/"
alias scripts="cd ~/scripts"
alias cpwd="pwd | tr -d '\n' | copy-to-clipboard"
alias gpwd=". gotopwd"
alias mictest="arecord -d 5 test-mic.wav"
alias dirsize="du -h -d 0"
alias prettyjson="python -m json.tool"
alias gettitlesbb="curl localhost:8080/api/titles"
alias gigabiteth="sudo ethtool -s enp0s25 speed 1000 duplex full autoneg off"
alias lsnethw="sudo lshw -C network"
alias manuals="man -k . | dmenu -l 30 | awk '{print $1}' | xargs man -Tpdf ls | okular -"
alias ealiases="vim ~/.bash_aliases"
alias upgrade="sudo apt-get upgrade -y"
alias edns="sudo vim /etc/resolvconf/resolv.conf.d/head"
alias restart-dns="sudo service resolvconf restart"
alias bookbot="cd $HOME_DIR/Documents/$REPOS_DIR/eclipse-workspaces/spotik-ws/bookbot"
alias b61="cd $HOME_DIR/Documents/$REPOS_DIR/eclipse-workspaces/spotik-ws/B61"
alias zolta="cat $HOME_DIR/Pictures/ascii/zolta.txt"
alias pepe="cat $HOME_DIR/Pictures/ascii/pepe.txt"
alias keanu="cat $HOME_DIR/Pictures/ascii/keanu.txt"
alias tux="cat $HOME_DIR/Pictures/ascii/tux.txt"
alias jude="cat $HOME_DIR/Pictures/ascii/jude.txt"
alias lock-screen="i3lock-fancy"
alias lock-screen-and-hibernate="qdbus org.freedesktop.ScreenSaver /ScreenSaver Lock && sudo hibernate"
alias themes="cd /usr/share/sddm/themes"
alias restart-plasma="kquitapp5 plasmashell && kstart5 plasmashell"
alias start-plasma="kstart plasmashell"
alias mount-samsunghdd="sudo mount -t  cifs -o username=pi,password=12345678,gid=frezer02,uid=frezer02 //pi/samsunghdd /media/frezer02/samsunghdd"
alias import-bsd-fresh-data="rsync -av -e 'ssh -p 8822' root@freebsd:~/image_scrapping/redditScrapper/new_images/file_creation.csv $HOME_DIR/Documents/repos/python/download_chart/data/partials/data.csv"
alias cls="clear"
alias c="clear"
alias godownloadcharts="cd $HOME_DIR/Documents/repos/python/download_chart"
alias network-manager-restart="sudo service network-manager restart"
alias wp.pl="ping wp.pl"
alias mount-covers="sshfs root@octawave:/opt/tomcat/apache-tomcat-8.5.8/webapps/data/bookbot/book_covers $HOME_DIR/Pictures/covers"
alias pc="cd /mnt/c/Users/PC/"
alias downloads="cd $HOME_DIR/Downloads"
alias music="cd $HOME_DIR/Music"
alias videos="cd $HOME_DIR/Videos"
alias documents="cd $HOME_DIR/Documents"
alias scripts="cd $HOME_DIR/scripts"
alias unmount-cifs="sudo umount -a -t cifs -l"
alias config="sudo update-alternatives --config"
alias config-install="sudo update-alternatives --install"
alias config-remove="sudo update-alternatives --remove"
alias sync-lolhub="rsync -a $HOME_DIR/Documents/repos/eclipse-workspaces/spotik-ws/lolhub/ $HOME_DIR/Documents/repos-windows/eclipse-workspaces/spotik-ws/lolhub --delete"
alias diff-lolhub="diff -r --no-dereference  ~/Documents/repos/eclipse-workspaces/spotik-ws/lolhub ~/Documents/repos-windows/eclipse-workspaces/spotik-ws/lolhub"
alias polkit-kde-start="/usr/lib/x86_64-linux-gnu/libexec/polkit-kde-authentication-agent-1 &"
alias save-i3-config="rsync -a ~/.config/i3/ ~/Dropbox/Configurations/linux_configs/i3"
alias save-dunst-config="rsync -a ~/.config/dunst/ ~/Dropbox/Configurations/linux_configs/dunst"
alias show-manually-installed="comm -23 <(apt-mark showmanual | sort -u) <(gzip -dc /var/log/installer/initial-status.gz | sed -n 's/^Package: //p' | sort -u)"
alias cfzf="fzf | cclip"
alias wifi-rescan="nmcli device wifi rescan"
alias date-now="date '+%F-%T'"
alias brightness-screen="sudo brightnessctl -d intel_backlight s"
alias brightness-keyboard="sudo brightnessctl -d tpacpi::kbd_backlight s"
alias untar="tar -xzf"
alias debugzad13="gdb --args target/program.out dataFile.txt"
alias compilezad13="g++ -g main.cpp"
alias dotfiles-git="/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME"
alias p="ping wp.pl"
alias nr="sudo service network-manager restart"
alias io="iiyama-only.sh"
alias lo="laptop-screen-only.sh"
alias md="mirror-displays.sh"
alias ofm="swallow dolphin"
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias mount-lolscrapper='sshfs grzesiek@isl.us.to:/home/grzesiek/repos/lolscrapper ~/Documents/repos/remote/lolscrapper'
