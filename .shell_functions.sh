getPath() {
  realpath -z $1 | xclip -selection c
}

getName() {
  basename -z $1 | tr -d '\n' | xclip -selection c
}

disableCaps() {
  xmodmap /home/frezer02/scripts/swapkeys -display :0

}

enableCaps() {
  xmodmap -e 'keycode 0x42 = Caps_Lock'
}

fastKeys() {
  xset r rate 300 50
}

vj() {
  cat $1 | python -m json.tool | nvim -R -c "set syntax=json" -
}

rmFiles() {
  find $1 -type f | xargs rm
}

Files() {
  find $1 -type f
}

countFiles() {
  find $1 -type f | wc -l
}

