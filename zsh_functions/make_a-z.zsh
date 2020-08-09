#!/usr/bin/env zsh
# -*- coding: utf-8 -*-
# =============================================================================
# Author: Will Grant
# =============================================================================

function mkf(){

	for letter in {a..z} ; do
		cat .all.txt | sort | 
		grep ^${letter} >> ${letter}.txt
	done
	
}

mkf
