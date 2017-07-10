#!/bin/bash
#watch -n0 "cnee --replay --file mouse-rec.xnl --speed-percent 100 --force-core-replay --synchronised-replay"

function checkParam()
{
    # Skynd
    if [[ $1 == "skynd" ]] ; then
        startScript skynd.xnl
    fi

    exit 0
}

function readFile()
{
    read -p "What file should be loaded? :" fileName
    checkFile
}

function checkFile()
{
    if [[ -e "${fileName}.xnl" ]] ; then
        echo "Starting script!"
        sleep 2
        startScript ${fileName}.xnl
    # TODO: check if file ending is ".xnl" is missing
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
    watch -n0 "DISPLAY=:0.0 cnee --replay --file ~/Repositories/github.com/hringriin/cookie-clicker-auto-click/repo/$1 --speed-percent 100 --force-core-replay --synchronised-replay"
}

checkParam

readFile
exit 0
