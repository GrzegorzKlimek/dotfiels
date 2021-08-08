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

