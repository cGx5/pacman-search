#!/bin/bash

cd "$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

if [ -d build ]; then
   rm -rf build
fi

mkdir build

gcc src/util.c src/dfs.c -std=c99 -o build/dfs.out

if [ ! -f build/dfs.out ]; then
    echo 'compile failed'
    exit
fi

cd base
python2 pacman.py -l tinyMaze -p SearchAgent
python2 pacman.py -l mediumMaze -p SearchAgent
python2 pacman.py -l bigMaze -z .5 -p SearchAgent
#python2 pacman.py -l mediumDottedMaze -z .5 -p SearchAgent
#python2 pacman.py -l mediumScaryMaze -z .5 -p SearchAgent


