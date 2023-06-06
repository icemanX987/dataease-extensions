#!/bin/sh
[ x"$de_ver" = x"" ] && de_ver=1.18.7
rm -f symbolmap.zip 

mvn clean package

cp view-symbolmap-backend/target/view-symbolmap-backend-${de_ver}.jar .

zip -r symbolmap.zip  ./view-symbolmap-backend-${de_ver}.jar ./plugin.json

rm -f ./view-symbolmap-backend-${de_ver}.jar
