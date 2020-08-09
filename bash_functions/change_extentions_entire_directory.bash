#!/usr/bin/env bash
# -*- coding: utf-8 -*-
# =============================================================================
# Author: Will Grant
# =============================================================================

dir=$1
for file in `ls $1/*`
do
mv $file $file.UP
done

#./change_extentions_entire_directory.sh test
#./change_extentions_entire_directory.sh Use period(.) for the current working directory.