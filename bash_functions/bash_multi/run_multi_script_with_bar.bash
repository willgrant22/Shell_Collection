#!/usr/bin/env bash
# -*- coding: utf-8 -*-
# =============================================================================
# Author: Will Grant
# =============================================================================

arr=(one two three)
function ProgressBar {
# Process data
    let _progress=(${1}*100/${2}*100)/100
    let _done=(${_progress}*4)/10
    let _left=40-$_done
# Build progressbar string lengths
    _fill=$(printf "%${_done}s")
    _empty=$(printf "%${_left}s")

printf "\r(script ${arr[@]:i:1}) [${_fill// /#}${_empty// /-}] ${_progress}%%"
}

_start=1

_end=100

arr=(one two three four)

for((i=0;i<4;i++)); do
	./script${i}.sh > /dev/null
	for number in $(seq ${_start} ${_end})
	do
		j=i*100/3
		v=i
		ProgressBar ${j} ${_end}
	done
done
printf '\n'

