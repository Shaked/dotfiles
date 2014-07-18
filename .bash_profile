PATHSFILE=$HOME/.profile/.paths;
test -f $PATHSFILE && source $PATHSFILE

FUNCSFILE=$HOME/.profile/.funcs;
test -f $FUNCSFILE && source $FUNCSFILE

# language 
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# php 
alias phplint='find . -name "*.php" -exec php -l {} \; | grep "Parse error"'

# git 
if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
fi

# Git branch in prompt.
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\u@mac \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "

# defaults
export EDITOR=`which vim`
