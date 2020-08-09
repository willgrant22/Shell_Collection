#!/usr/bin/env zsh
# -*- coding: utf-8 -*-
# =============================================================================
# Author: Will Grant
# =============================================================================

ls -a /usr/local/lib/python3.8/site-packages >> .pymods.txt

function py(){
	for letter in {a..z}; do
		cat .pymods.txt | sort | 
		grep ^${letter} >> ${letter}.txt
		mv ${letter}.txt pymods/
	done
}

py