#====Functions====


function source_file() {
    [ -f "$1" ] && source "$1"
}
function source_custom() {
    [ -f "$HOME/.config/bash/$1.sh" ] && source "$HOME/.config/bash/$1.sh"
}
