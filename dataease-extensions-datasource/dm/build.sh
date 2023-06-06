#!/bin/sh
[ x"$de_ver" = x"" ] && de_ver=1.18.7
rm -f dm.zip 
mvn clean package -U -Dmaven.test.skip=true 

cp dm-backend/target/dm-backend-${de_ver}.jar .

zip -r dm.zip  ./dm-backend-${de_ver}.jar ./dmDriver   ./plugin.json

rm -f ./dm-backend-${de_ver}.jar