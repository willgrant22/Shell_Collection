#!/usr/bin/env bash
# -*- coding: utf-8 -*-
# =============================================================================
# Author: Will Grant
# =============================================================================

user=$(whoami)
input=/home/$user
output=/tmp/${user}_home_$(date +%Y-%m-%d_%H%M%S).tar.gz

function total_files {
        find $input -type f | wc -l
}

function total_directories {
        find $input -type d | wc -l
}

function total_archived_directories {
        tar -tzf $input | grep  /$ | wc -l
}

function total_archived_files {
        tar -tzf $input | grep -v /$ | wc -l
}

tar -czf $output $input 2> /dev/null

src_files=$( total_files $input )
src_directories=$( total_directories $input )

arch_files=$( total_archived_files $output )
arch_directories=$( total_archived_directories $output )

echo "Files to be included: $src_files"
echo "Directories to be included: $src_directories"
echo "Files archived: $arch_files"
echo "Directories archived: $arch_directories"

if [ $src_files -eq $arch_files ]; then
        echo "Backup of $input completed!"
        echo "Details about the output backup file:"
        ls -l $output
else
        echo "Backup of $input failed!"
fi