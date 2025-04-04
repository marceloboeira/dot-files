# vim: ft=zsh

export GOENV_ROOT="$HOME/.goenv"
export PATH="$GOENV_ROOT/bin:$PATH"
eval "$(goenv init -)"
export PATH="$GOROOT/bin:$PATH"
export PATH="$PATH:$GOPATH/bin"
#
# this is required because go completions are not configured to be autoloaded
if [ -e /usr/local/share/zsh/site-functions/_go ]; then
  source /usr/local/share/zsh/site-functions/_go
fi
