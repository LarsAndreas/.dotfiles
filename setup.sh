#!/bin/bash

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo 

ln -s $BASEDIR/nvim ~/.config/nvim 
