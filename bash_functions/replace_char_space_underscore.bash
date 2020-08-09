#!/usr/bin/env bash
# -*- coding: utf-8 -*-
# =============================================================================
# Author: Will Grant
# =============================================================================

user=$(whoami)
DIR="."
# Controlling a loop with bash read command by redirecting STDOUT as
# a STDIN to while loop
# find will not truncate filenames containing spaces
find $DIR -type d | while read file; do # -type d for directory
# using POSIX class [:space:] to find space in the filename
if [[ "$file" = *[[:space:]]* ]]; then
# substitute space with "_" character and consequently rename the file
mv "$file" `echo $file | tr ' ' '_'` 
fi;
# end of while loop
done 
