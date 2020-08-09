#!/usr/bin/env sh
# -*- coding: utf-8 -*-
# =============================================================================
# Author: Will Grant
# =============================================================================

user=${USER}

function dev() {
    outMAIN=${HOME}/Desktop/Backups
    input=${HOME}/Desktop/Backups
    out=$outMAIN/${USER}_dev_$(date +%F_%T).tar.gz
    tar -cvzf $out $input >> ${outMAIN}"_"${user}"-dev-"$(date +%F_%T).txt
}