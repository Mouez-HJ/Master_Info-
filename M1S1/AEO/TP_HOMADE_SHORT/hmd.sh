#!/bin/bash


if test $# -eq 2
then
     
fullname=$(basename $2)
filename=${fullname%.*}
filename="$filename.hmd"
gforth $1 $2 -e bye

cat homade.hmd homade.shmd > $filename
rm -f homade.hmd
rm -f homade.shmd
rm -f homade.www
jhomade -p /dev/ttyUSB0 $filename
else
     echo "Il faut deux arguments ...."
fi
