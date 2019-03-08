#!/bin/sh

LIBREPLANT_PROJECT=""
GIT_LIBREPLAN=""
# Cloner git Libreplan officiel
cd ~/
[ ! -f Libreplan ] && mkdir Libreplan
mv  ${LIBREPLANT_PROJECT} ~/Libreplan
cd Libreplan/${LIBREPLANT_PROJECT}
git init
git add .
git commit -m "First commit"
git remote add origin ${GIT_LIBREPLAN}
git push origin master
 