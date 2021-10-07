#====Functions====


function source_file() {
    [ -f "$1" ] && source "$1"
}
function source_custom() {
    [ -f "$HOME/.config/bash/custom/$1" ] && source "$HOME/.config/bash/custom/$1"
}
