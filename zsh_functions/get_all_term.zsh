#!/usr/bin/env zsh
# -*- coding: utf-8 -*-
# =============================================================================
# Author: Will Grant
# =============================================================================

ls -a /usr/bin >> .all.txt
sort .all.txt >> .all.txt 

function mkf(){

	for letter in {a..z} ; do
		cat .all.txt | sort | 
		grep ^${letter} >> ${letter}.txt
		mv ${letter}.txt commands/
	done

	
}

mkf
