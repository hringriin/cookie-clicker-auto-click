#!/bin/bash
#watch -n0 "cnee --replay --file mouse-rec.xnl --speed-percent 100 --force-core-replay --synchronised-replay"

function readFile()
{
    read -p "What file should be loaded? :" fileName
    checkFile
}

function checkFile()
{
    if [[ -e "${fileName}.xnl" || -e ${fileName} ]] ; then
        echo "Starting script!"
        sleep 2
        startScript ${fileName}.xnl
    elif [[ -e ${fileName} ]] ; then
        echo "Starting script!"
        sleep 2
        startScript ${fileName}
    else
        echo "File not found!"
        readFile
    fi
}

function startScript()
{
    watch -n0 "DISPLAY=:0.0 cnee --replay --file /home/hringriin/ownCloud/Documents/cookie-clicker/hmk\ script/$1 --speed-percent 100 --force-core-replay --synchronised-replay"
}

if [[ $1 == "skynd" ]] ; then
    startScript skynd.xnl
    exit 0
fi

readFile
exit 0
