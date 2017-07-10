#!/bin/bash
# creates a profile to click! :-)

function nameFile()
{
    read -p "Name your file: " fileName
    testName
}

function testName()
{
    if [[ -e "${fileName}.xnl" ]] ; then
        echo "File exists! Try another name!"
        nameFile
    else
        echo "Name accepted!"
        createProfile
    fi
}

function createProfile()
{
    cnee --record --mouse --out-file ${fileName}.xnl --events-to-record 800 --time 3
}

nameFile
