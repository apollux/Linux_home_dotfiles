#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

for f in `ls ${DIR}/dotfiles`
do
    ln -s ${DIR}/dotfiles/$f ~/.$f
done
