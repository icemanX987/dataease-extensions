#!/bin/sh
[ x"de_ver" = x"" ] && de_ver=1.18.7
rm -f kingbase.zip 
mvn clean package -U -Dmaven.test.skip=true

cp kingbase-backend/target/kingbase-backend-${de_ver}.jar .

zip -r kingbase.zip  ./kingbase-backend-${de_ver}.jar ./kingbaseDriver   ./plugin.json

rm -f ./kingbase-backend-${de_ver}.jar
