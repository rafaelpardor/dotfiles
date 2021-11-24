export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin
if [ -n "$BASH_VERSION" ]; then
  if [ -f "$HOME/.bashrc" ]; then
    . "$HOME/.bashrc"
  fi
fi
