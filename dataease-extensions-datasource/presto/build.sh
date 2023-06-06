#!/bin/sh
[ x"de_ver" = x"" ] && de_ver=1.18.7
rm -f presto.zip 
mvn clean package  -U -Dmaven.test.skip=true

cp presto-backend/target/presto-backend-${de_ver}.jar .

zip -r presto.zip  ./presto-backend-${de_ver}.jar ./prestoDriver   ./plugin.json

rm -f ./presto-backend-${de_ver}.jar
