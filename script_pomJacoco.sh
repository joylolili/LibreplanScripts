#!/bin/sh

#Changer le pom.xml pour sonde JaCoCo
LIBREPLAN="/home/tomcat/.jenkins/workspace/ConstructionWARLibreplan"
SCRIPTSDossier="/home/tomcat/.jenkins/workspace/scripts"

cd ${LIBREPLAN}
[ -d pom.xml ] && rm -rf pom.xml
cd ${SCRIPTSDossier}
cp pom.xml ${LIBREPLAN}/pom.xml
echo "pom.xml a été modifié"

