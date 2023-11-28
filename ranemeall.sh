#!/bin/sh


Rename()
{
    local path=$1
    local output=$(ls $path)

    for i in $output
    do
        local tmp="$path/$i"
        if [ -d $tmp ];then
            echo $tmp
            Rename "$tmp"
            mv $tmp "$path/.5$i"
        fi
        if [ -f $tmp ];then
            echo "$tmp"
            mv $tmp "$path/.5$i"
        fi
    done
}

Rename ~/tests
