#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"


echo "If any of the following files or directories exists in"\
    "your home directory, they will be removed!"
for f in `ls ${DIR}/dotfiles`
do
    echo ".$f"
done

read -p "Are you sure you want to continue? " -n 1
echo
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
    echo "Aborted"
    exit 1
fi

for f in `ls ${DIR}/dotfiles`
do
    if [ -e ~/.$f ]; then
        rm ~/.$f -r
    fi
    ln -s ${DIR}/dotfiles/$f ~/.$f
done
echo "Done"
