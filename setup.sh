DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
# Vim
ln -sf "${DIR}/.vimrc" $HOME/.vimrc
ln -sf "${DIR}/vim/" $HOME/vim

# Git
ln -sf "${DIR}/.gitconfig" $HOME/.gitconfig
