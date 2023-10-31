# Get current directory of the script
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# Run docker image to export drawio files to png
docker run -it -v $SCRIPT_DIR:/data rlespinasse/drawio-export -o dist -f png -t --remove-page-suffix