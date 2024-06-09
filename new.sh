#!/bin/sh

printf "Digite o nome do post:\n"
read POSTNAME
printf "Digite a descrição do post:\n"
read DESCRIPTION

CFG=$(cat << EOF
filename = $POSTNAME.html
title = $POSTNAME
description = $DESCRIPTION
created = $(date +'%d/%m/%Y')
updated = $(date +'%d/%m/%Y')
EOF
)

CURRENT=$(/bin/ls -l pages | awk '{ print $9 }' | sort -r | head -n 1 | awk -F "-" '{ print $1 + 10 }' | bc)

echo "$CFG" > pages/"$CURRENT-$POSTNAME".cfg
$EDITOR temp/$(/bin/ls pages/"$CURRENT-$POSTNAME.cfg" | md5sum | awk '{print $1}')
smu temp/* > pages/"$CURRENT-$POSTNAME.html"
rm temp/*

make

