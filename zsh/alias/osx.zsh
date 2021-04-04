if [ -f "/Applications/Emacs.app/Contents/MacOS/Emacs" ]; then
  export EMACS="/Applications/Emacs.app/Contents/MacOS/Emacs"
  alias emacs="$EMACS -nw"
fi

if [ -f "/Applications/Emacs.app/Contents/MacOS/bin/emacsclient" ]; then
  alias emacsclient="/Applications/Emacs.app/Contents/MacOS/bin/emacsclient"
fi


alias showFiles="defaults write com.apple.finder AppleShowAllFiles -boolean true ; killall Finder;"
alias hideFiles="defaults write com.apple.finder AppleShowAllFiles -boolean false ; killall Finder"
