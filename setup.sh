DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
DIR_FUNCS=./funcs

# brew installations 
brew update
brew upgrade
brew tap josegonzalez/php
brew install mackup
brew install wget
brew install mercurial
brew install mysql
brew install php53 --with-fpm
brew install php54 --with-fpm
brew install php55 --with-fpm
brew install phpunit

# mysql 
ln -sfv /usr/local/opt/mysql/*.plist ~/Library/LaunchAgents

# mackup
ln -sF "${DIR}/.mackup" $HOME/.mackup 
ln -sF "${DIR}/.mackup.cfg" $HOME/.mackup.cfg 
mackup restore


# Functions 
echo "Setting up custom functions..."
ln -sF "${DIR}/funcs" $HOME/funcs
ln -sF "${DIR}/.profile" $HOME/.profile

# Vim
echo "Setting up vim..."
ln -sF "${DIR}/.vimrc" $HOME/.vimrc
ln -sF "${DIR}/vim" $HOME/vim
rm -rf ~/.vim/bundle/Vundle.vim
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

echo "Setting up git..."
# Git
ln -sF "${DIR}/.gitconfig" $HOME/.gitconfig

echo "Setting up user profile..."
# Profile
ln -sF "${DIR}/.bash_profile" $HOME/.bash_profile
source $HOME/.bash_profile

