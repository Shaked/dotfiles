PATHSFILE=$HOME/.profile/.paths;
test -f $PATHSFILE && source $PATHSFILE

FUNCSFILE=$HOME/.profile/.funcs;
test -f $FUNCSFILE && source $FUNCSFILE

COMPLETIONFILE=$HOME/.profile/.completion;
test -f $COMPLETIONFILE && source $COMPLETIONFILE

UIFILE=$HOME/.profile/.ui;
test -f $UIFILE && source $UIFILE

AGITFILE=$HOME/.profile/.agit;
test -f $AGITFILE && source $AGITFILE

LOCALFILE=$HOME/.bash_local;
test -f $LOCALFILE && source $LOCALFILE

# language
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# php
alias phplint='find . -name "*.php" -exec php -l {} \; | grep "Parse error"'

# defaults
export EDITOR=`which vim`
[[ -s "/Users/klein/.gvm/scripts/gvm" ]] && source "/Users/klein/.gvm/scripts/gvm"

notify() {
	terminal-notifier -title "Terminal Notifier" -message "$1"
}