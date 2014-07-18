DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
# Functions 
echo "Setting up custom functions..."
ln -sf "${DIR}/funcs" $HOME/funcs 
source $HOME/funcs/.funcs

# Vim
echo "Setting up vim..."
ln -sf "${DIR}/.vimrc" $HOME/.vimrc
ln -sf "${DIR}/vim" $HOME/vim

echo "Setting up git..."
# Git
ln -sf "${DIR}/.gitconfig" $HOME/.gitconfig

echo "Setting up user profile..."
# Profile
ln -sf "${DIR}/.bash_profile" $HOME/.bash_profile
source $HOME/.bash_profile
