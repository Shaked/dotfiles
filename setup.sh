DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
ln -s "${DIR}/vim/.vimrc" $HOME/.vimrc
echo "ln -s ${DIR}/vim/.vimrc $HOME/.vimrc"
