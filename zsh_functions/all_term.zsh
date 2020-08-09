#!/usr/bin/env zsh
# -*- coding: utf-8 -*-
# =============================================================================
# Author: Will Grant
# =============================================================================

ls -a /usr/bin >> data/commands/all.txt
ls -a /usr/local/lib/python3.8/site-packages >> data/pymods/pymods.txt
ls -a /usr/local/lib >> data/libs/lib.txt
brew list >> data/brew/homebrew_packages.txt

function cmd(){

	for letter in {a..z} ; do
		cat data/commands/all.txt | sort | 
		grep ^${letter} >> ${letter}.txt
		mv data/commands/${letter}.txt data/commands/
	done
	
}
function py(){
	for letter in {a..z} ; do
		cat data/pymods/pymods.txt | sort | 
		grep ^${letter} >> ${letter}.txt
		mv ${letter}.txt data/pymods/
	done
}

function lib(){
	for letter in {a..z}; do
		cat data/libs/lib.txt | sort |
		grep ^${letter} >> ${letter}.txt
		mv ${letter}.txt data/libs/
	done
}
function homeBrew(){
	for letter in {a..z}; do
			cat data/brew/homebrew_packages.txt | sort |
			grep ^${letter} >> ${letter}.txt
			mv ${letter}.txt data/brew/
	done
	
}
homeBrew

rm data/brew/homebrew_packages.txt data/libs/lib.txt data/pymods/pymods.txt data/commands/all.txt
