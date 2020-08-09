#!/usr/bin/env bash
# -*- coding: utf-8 -*-
# =============================================================================
# Author: Will Grant
# =============================================================================

directory="."

# bash check if directory exists
if [ -d $directory ]; then
	echo "Directory exists"
else 
	echo "Directory does not exists"
fi 