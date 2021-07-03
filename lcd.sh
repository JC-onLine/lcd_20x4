#!/usr/bin/zsh
LCD=/dev/ttyUSB0

function init() {
	echo "\xA0" > $LCD
}

function gotoxy() {
	echo "\xA1\x$1\x$2" > $LCD
}

function print() {
	echo $1 > $LCD
}


#main
init
#echo "\xA0" > $LCD
gotoxy 1 1
cat /proc/cpuinfo | grep MHz > $LCD

