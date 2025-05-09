# if directory does not exist, create it and any needed intermediate directories,
# and log that it's being created
function createdir() {
  [ ! -e "$1" ] && echo "creating $1" && mkdir -p "$1"
}

# copy a to b if b does not already exist, and log it
function safecopy() {
  [ ! -e "$2" ] && echo "copying $1 to $2" && cp "$1" "$2"
}

# like safecopy, but cloning a git repo instead
function safeclone() {
  [ ! -e "$2" ] && echo "cloning $1 to $2" && git clone "$1" "$2"
}
