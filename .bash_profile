PATHSFILE=$HOME/.profile/.paths;
test -f $PATHSFILE && source $PATHSFILE

FUNCSFILE=$HOME/.profile/.funcs;
test -f $FUNCSFILE && source $FUNCSFILE

# language 
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# php 
alias phplint='find . -name "*.php" -exec php -l {} \; | grep "Parse error"'
alias use_php53="brew unlink php54 && brew unlink php55 && brew unlink php53 && brew link php53"
alias use_php54="brew unlink php53 && brew unlink php55 && brew unlink php54 && brew link php54"
alias use_php55="brew unlink php53 && brew unlink php54 && brew unlink php55 && brew link php55"

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
[[ -s "/Users/Shaked/.gvm/scripts/gvm" ]] && source "/Users/Shaked/.gvm/scripts/gvm"
