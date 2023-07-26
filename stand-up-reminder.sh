#!/bin/bash

sitting=true

function show_reminder() {
    if [ $sitting = true ]; then
        CURRENTDATE=`date +"%T"`
        echo ""
	    echo "----------------------------------------"
        echo "${CURRENTDATE} - Time to stand up!"
        echo ""
        echo " _\|/^ "
        echo "  (_oo "
        echo "   |   "
        echo "  /|\  "
        echo "   |   "
        echo "   LL  "
        echo "----------------------------------------"
        sitting=false
    else
        CURRENTDATE=`date +"%T"`
        echo ""
	    echo "----------------------------------------"
        echo "${CURRENTDATE} - Sit down!"
        echo ""
        echo "   i______i "
        echo "   I______I " 
        echo "   I______I " 
        echo "   I______I "
        echo "  /      /I "
        echo " (______( I "
        echo " I      I   "
        echo " I      I   "
        echo "----------------------------------------"
        sitting=true
    fi
}

while true; do
    show_reminder
    CURRENTDATE=`date +"%T"`
    echo "${CURRENTDATE} - 30min left"
    sleep 600
    CURRENTDATE=`date +"%T"`
    echo "${CURRENTDATE} - 20min left"
    sleep 600
    CURRENTDATE=`date +"%T"`
    echo "${CURRENTDATE} - 10min left"
    sleep 600
done
