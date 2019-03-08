#!/bin/sh

#Connexion postgresql



# Clean bases
drop database [ IF EXISTS ] libreplan;
drop database [ IF EXISTS ] libreplandev;
drop database [ IF EXISTS ] libreplandevtest;