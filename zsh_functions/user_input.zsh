#!/usr/bin/env zsh
# -*- coding: utf-8 -*-
# =============================================================================
# Author: Will Grant
# =============================================================================

function readable() {
	read "var?Yes or No: ";
	echo "You responded: "$var
}

readable