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
brew install php54 --with-fpm --without-ldap
brew install php55 --with-fpm --without-ldap
brew install phpunit

# mysql 
ln -sfv /usr/local/opt/mysql/*.plist ~/Library/LaunchAgents

# mackup
ln -sf $HOME/Google\ Drive/Mackup/.mackup.cfg $HOME/
mackup restore

# sounds 
sudo mv /System/Library/Sounds/Funk.aiff /System/Library/Sounds/Funk.aiff.old
sudo cp $DIR/sounds/Funk.aiff /System/Library/Sounds/Funk.aiff

# Functions 
echo "Setting up custom functions..."
ln -sfF "${DIR}/funcs/" $HOME/funcs
ln -sfF "${DIR}/.profile/" $HOME/.profile

# Vim
echo "Setting up vim..."
ln -sf "${DIR}/.vimrc" $HOME/.vimrc
ln -sfF "${DIR}/vim/" $HOME/vim
rm -rf ~/.vim/bundle/Vundle.vim
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

echo "Setting up git..."
# Git
ln -sf "${DIR}/.gitconfig" $HOME/.gitconfig

echo "Setting up user profile..."
# Profile
ln -sf "${DIR}/.bash_profile" $HOME/.bash_profile
source $HOME/.bash_profile

