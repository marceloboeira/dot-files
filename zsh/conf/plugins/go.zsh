# vim: ft=zsh

# this is required because go completions are not
# configured to be autoloaded
eval "$(goenv init -)"
if [ -e /usr/local/share/zsh/site-functions/_go ]; then
  source /usr/local/share/zsh/site-functions/_go
fi
