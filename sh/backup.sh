#!/usr/bin/env sh
# -*- coding: utf-8 -*-
# =============================================================================
# Author: Will Grant
# =============================================================================

user=$(whoami)
DIR=${HOME}/Desktop/

function total() {
    echo ""
}

function dev() {
    outMAIN=${HOME}Backups/
    input=${HOME}/Desktop/software_development
    out=$outMAIN/${USER}_dev_$(date +%F_%T).tar.gz
    tar -cvzf $out $input >> ${outMAIN}"_"${user}"-dev-"$(date +%F_%T).txt
}

function home() {
    outMAIN=${HOME}/Backups/home/
    input=${HOME}
    out=$outMAIN/${user}_home_$(date +%F_%T).tar.gz
    tar -cvzf $out $input >> ${outMAIN}"_"${user}"-home-"$(date +%F_%T).txt
}

function all() {
    outMAIN=${HOME}/Backups/all
    input='/'
    out=$outMAIN/${user}_all_$(date +%F_%T).tar.gz
    tar -cvzf $out $input
    tar -cvzf $out $input >> ${outMAIN}"_"${user}"-all-"$(date +%F_%T).txt
}
    
function backup {
    echo ""
}

echo $user