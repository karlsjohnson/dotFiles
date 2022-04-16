#====Functions====


function source_file() {
    [ -f "$1" ] && source "$1"
}
function source_custom() {
    [ -f "$Git/dotFiles/bash/$1.sh" ] && source "$Git/dotFiles/bash/$1.sh"
}
