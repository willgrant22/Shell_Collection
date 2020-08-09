#!/usr/bin/env sh
# -*- coding: utf-8 -*-
# =============================================================================
# Author: Will Grant
# =============================================================================

directory="github_uploads"

# bash check if directory exists
if [ -d $directory ]; then
	echo "Directory exists"
else 
	echo "Directory does not exist"
fi 