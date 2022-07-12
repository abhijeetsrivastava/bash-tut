#!/bin/zsh

declare -A emoji

emoji[smile]=😀
emoji[bear]=🐻
emoji[food]=🍔
emoji[idea]=💡
emoji[pomo]=🍅

ELEMENTS=${#emoji[@]}
echo $ELEMENTS


toemoji() {
    for e in $emoji
    do
        echo "$e"
    done
}

toemoji "$@"

