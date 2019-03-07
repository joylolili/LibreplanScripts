#!/bin/sh

#Depot war dans Nexus


cd /home/tomcat/.jenkins/workspace/ConstructionWARLibreplan/libreplan-webapp/target
OLD_FILE="libreplan-webapp.war"
export WAR_FILE="libreplan-webapp.war"
mv ${OLD_FILE} ${WAR_FILE} 
curl --fail -u admin:admin123 --upload-file ${WAR_FILE} ${IP_NEXUS}
RET=$?
if [ ${RET} -eq 0 ]
then 
	echo "Transfer du fichier \"${WAR_FILE}\" sur Nexus:Libreplan/ : OK"
else
	echo "Transfer du fichier \"${WAR_FILE}\" sur Nexus:Libreplan/ : KO !"
fi
