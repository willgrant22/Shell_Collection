#!/usr/bin/env zsh
# -*- coding: utf-8 -*-
# =============================================================================
# Author: Will Grant
# =============================================================================

function hi(){
	echo "hi"
}

function main() {

	read "var?Hello? ";
	if [[ $var = "hello" ]]; then
		hi
	fi
}

main