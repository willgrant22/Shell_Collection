#!/usr/bin/env sh
# -*- coding: utf-8 -*-
# =============================================================================
# Author: Will Grant
# =============================================================================

DIR=${HOME}/Desktop/

function total_directories() {
	echo \\r
	printf "	Directories:" ; find $DIR -type d | wc -l;
	echo \\r
}

function total_files() {
	printf "	Files:	    " ; find $DIR -type f | wc -l;
	echo \\r
}

total_directories
total_files

