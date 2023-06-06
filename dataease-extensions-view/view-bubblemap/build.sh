#!/bin/sh
[ x"$de_ver" = x"" ] && de_ver=1.18.7
rm -f bubblemap.zip 
mvn clean package  -U -Dmaven.test.skip=true

cp view-bubblemap-backend/target/view-bubblemap-backend-${de_ver}.jar .

zip -r bubblemap.zip  ./view-bubblemap-backend-${de_ver}.jar ./plugin.json

rm -f ./view-bubblemap-backend-${de_ver}.jar
