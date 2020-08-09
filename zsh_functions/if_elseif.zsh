#!/usr/bin/env zsh
# -*- coding: utf-8 -*-
# =============================================================================
# Author: Will Grant
# =============================================================================

function main() {
	if [[ $1 = y ]];
	then
		echo "one"
	else
		if [[ $1 = n ]];
		then
			echo "two"
		else
			if [[ $1 = "" ]];
			then
				echo "no args given"
			else
				echo "invalid args"
			fi
		fi
	fi
	}
	main $1