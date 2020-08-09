#!/usr/bin/env sh
# -*- coding: utf-8 -*-
# =============================================================================
# Author: Will Grant
# =============================================================================

user=$(whoami)
DIR=${HOME}/Desktop/
mkdir -p ${HOME}/Desktop/home_backup/

function home() {
	
    outMAIN=${HOME}/Desktop/home_backup
    input=${HOME}
    out=$outMAIN/${user}_home_$(date +%F_%T).tar.gz
    tar -cvzf $out $input >> ${outMAIN}/${user}"-home-"$(date +%F_%T).txt
}

home