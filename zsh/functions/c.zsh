# Quickjumping and completion for ~/Code
function c() {
  cd ~/Code/$1;
}

_c() {
  _files -W ~/Code;
}

#compdef _c c
