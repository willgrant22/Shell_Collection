#!/usr/bin/env zsh
# -*- coding: utf-8 -*-
# =============================================================================
# Author: Will Grant
# =============================================================================

ls -a /usr/bin >> .all.txt
sort .all.txt >> .all.txt 
ls -a /usr/local/lib >> .lib.txt
sort .lib.txt >> .lib.txt
ls -a /usr/local/lib/python3.8/site-packages >> .pymods.txt
sort .pymods.txt >> .pymods.txt

function mkf(){
	for letter in {a..z}; do
		cat .all.txt | sort | 
		grep ^${letter} >> ${letter}.txt
		mv ${letter}.txt commands/
	done
}

function py(){
	for letter in {a..z}; do
		cat .pymods.txt | sort | 
		grep ^${letter} >> ${letter}.txt
		mv ${letter}.txt pymods/
	done
}

mkf
py

