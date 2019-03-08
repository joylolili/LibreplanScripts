#!/bin/sh

#https://stackoverflow.com/questions/2732474/restore-a-postgres-backup-file-using-the-command-line

#Connexion postgresql

#su - postgres
#psql -l

#psql -U postgres -d database_name -c "SELECT c_defaults  FROM user_info WHERE c_uid = 'testuser'"

#su -c "psql -d database_name -c \"SELECT c_defaults  FROM user_info WHERE c_uid = 'testuser'\"" postgres

#sudo -u postgres -H -- psql -d database_name -c "SELECT c_defaults  FROM user_info WHERE c_uid = 'testuser'"

#psql --set AUTOCOMMIT=off --set ON_ERROR_STOP=on -P pager=on \ 
#postgresql://${myUsr}:${dbPass}@${dbHost}/${myRdb}

psql postgresql://<user>:<password>@<host>/<db> << EOF
       <your sql queries go here>
EOF

# Creer 3 bases de donnees pour Libreplan
create database libreplan;
create user libreplan with password libreplan;
grant all privileges from database libreplan to libreplan;

create database libreplandev;
grant all privileges from database libreplandev to libreplan;

create database libreplandevtest;
grant all privileges from database libreplandevtest to libreplan;

# Restore dump

#psql -h localhost -U postgres -W -d DB_NAME < DB_BACKUP.sql

#psql -U user db_name < /directory/archive.sql

#psql -U <username> -d <dbname> -1 -f <filename>.sql

#pg_restore -U <username> -d <dbname> -1 <filename>.dump

#pg_restore -d database_name -U username -C backup.dump

#pg_restore -h localhost -p 5432 -U postgres -d old_db -v  "/usr/local/backup/10.70.0.61.backup"

