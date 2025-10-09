# fetch the default branch,
# delete the provided bookmark (including remote bookmarks),
# and abandon all non-default-branch revisions
jjdone() {
  local mb=${DEFAULT_BRANCH:-main}
  jj fetch $mb
  jj new $mb
  jj abandon --retain-bookmarks "(::$1 | $1::) ~ ::$mb"
  jj b forget --include-remotes "$1"
}

# manually set dynamic completions for jjdone
function _jjdone() {
  local -a bookmarks
  bookmarks=($(jj b list -T 'self.name() ++ " "'))
  _values 'bookmarks' $bookmarks
}
compdef _jjdone jjdone
