PATH=/usr/local/Cellar/vim/7.4.052/bin/:/Applications/Postgres93.app/Contents/MacOS/bin:$HOME/bin:./node_modules/.bin:$PATH
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
### EDITOR
export EDITOR="vim"
export CLICOLOR=1
export LSCOLORS=bxfxcxdxbxegebabagacad

### RBENV
# export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

### JRUBY OPTIONS
# export JRUBY_OPTS=--2.0-X+C

### Android DevTools
# export PATH=$PATH:~/Library/AndroidDevTools/sdk/platform-tools/

### SSH-FORWARDING
ssh-add

### DEFAULT STAGE NAME FOR AWS
export STAGE=miguel

### GIT
source ~/.bash/gitprompt.sh
source ~/.bash/iterm_tab_colors.sh
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

### ALIAS
alias be="bundle exec "
alias cdg="cd ~/code/goldenmanager"

### Added by the Heroku Toolbelt
# export PATH="/usr/local/heroku/bin:$PATH"

