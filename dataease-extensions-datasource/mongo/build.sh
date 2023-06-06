#!/bin/sh
[ x"de_ver" = x"" ] && de_ver=1.18.7
rm -f mongo.zip 
mvn clean package -U -Dmaven.test.skip=true

cp mongo-backend/target/mongo-backend-${de_ver}.jar .

zip -r mongo.zip  ./mongo-backend-${de_ver}.jar ./mongobiDriver   ./plugin.json

rm -f  ./mongo-backend-${de_ver}.jar
