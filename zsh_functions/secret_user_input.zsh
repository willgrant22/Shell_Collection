#!/usr/bin/env zsh
# -*- coding: utf-8 -*-
# =============================================================================
# Author: Will Grant
# =============================================================================

function sread() {
	read -s "var?Yes or No? "; echo "You responded: "$var
}

sread