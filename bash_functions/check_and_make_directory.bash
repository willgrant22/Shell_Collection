#!/usr/bin/env bash
# -*- coding: utf-8 -*-
# =============================================================================
# Author: Will Grant
# =============================================================================

echo "Enter directory name: "
read ndir
if [ -d "$ndir" ]
then
echo "Directory exist"
else
`mkdir $ndir`
echo "Directory created"
fi