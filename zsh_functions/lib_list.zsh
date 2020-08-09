#!/usr/bin/env zsh
# -*- coding: utf-8 -*-
# =============================================================================
# Author: Will Grant
# =============================================================================

ls -a /usr/local/lib >> .lib.txt

function lib(){
	for letter in {a..z}; do
		cat .lib.txt | sort |
		grep ^${letter} >> ${letter}.txt
		mv ${letter}.txt libs/
	done
}

lib