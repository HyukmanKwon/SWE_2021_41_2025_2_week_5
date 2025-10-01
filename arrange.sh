#!/bin/bash

for my_file in files/*
do
    if [ -f "$my_file" ] ; then
        file_name=$(basename "$my_file")
        first_name=${file_name:0:1}
        change_up=${first_name,,}
        mv "$my_file" "$change_up/"
    fi
done