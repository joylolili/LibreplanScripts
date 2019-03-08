#!/bin/sh

LIBREPLAN=~/.jenkins/workspace/C
TOMCAT1="${TOMCAT_B}/webapp"
TOMCAT2="${TOMCAT_K}/webapp"
TOMCAT3="${TOMCAT_J}/webapp"

# Recuperer war et copier dans 3 Tomcat
cd ${LIBREPLAN}
OLD_FILE="libreplan-webapp.war"
export WAR_FILE="libreplan.war"
mv ${OLD_FILE} ${WAR_FILE}

cp ${WAR_FILE}  ${TOMCAT1}
cp ${WAR_FILE}  ${TOMCAT2}
cp ${WAR_FILE}  ${TOMCAT3}

# Demarrer 3 Tomcat
./${TOMCAT1}/bin/startup.sh
./${TOMCAT2}/bin/startup.sh
./${TOMCAT3}/bin/startup.sh

#Ajouter une ligne dans tomcat/Catalina.bat


# Repertoires des 3 Tomcat PC
stage('') {
	parallel {
		stage('Start Tomcat machine slave 1') {
			steps {
				cd 
				./startup.sh
			}
		}
		stage('Start Tomcat machine slave 2') {
			steps {
				cd 
				./startup.sh
			}
		}
		stage('Start Tomcat machine slave 3') {
			steps {
				cd 
				./startup.sh
			}
		}
	}
}