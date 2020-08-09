#!/usr/bin/env sh
# -*- coding: utf-8 -*-
# =============================================================================
# Author: Will Grant
# =============================================================================

# Changes uppercase letters to lower

user=$(whoami)
DIR=${HOME}/Desktop/

find $DIR -type d | while read file; do

if [[ "$file" = *[:upper:]* ]]; then

mv "$file" `echo $file | tr '[:upper:]' '[:lower:]'` 
fi;

done 