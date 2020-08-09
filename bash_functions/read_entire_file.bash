#!/usr/bin/env bash
# -*- coding: utf-8 -*-
# =============================================================================
# Author: Will Grant
# =============================================================================

file='salesdata.txt'
while read line; do
echo $line
done < $file