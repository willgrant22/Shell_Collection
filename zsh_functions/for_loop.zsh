#!/usr/bin/env zsh
# -*- coding: utf-8 -*-
# =============================================================================
# Author: Will Grant
# =============================================================================

function loop() {
	for x (1; 2; 3);
	do
		echo $x; 
	done
}

loop
