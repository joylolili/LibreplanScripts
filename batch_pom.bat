::Changer le pom.xml pour sonde JaCoCo
LIBREPLAN="C:\Formation\192.168.102.156\workspace\ConstructionWARLibreplan\libreplan-webapp"
SCRIPTSDossier="C:\Formation\192.168.102.156\workspace\scripts"

cd ${LIBREPLAN}
if exist pom.xml del -rf pom.xml
cd ${SCRIPTSDossier}
copy pom.xml ${LIBREPLAN}/pom.xml
echo "pom.xml a été modifié"