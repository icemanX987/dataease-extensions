#!/bin/sh
[ x"$de_ver" = x"" ] && de_ver=1.18.7
rm -f 3dpie.zip 

mvn clean package -U -Dmaven.test.skip=true 

cp view-3dpie-backend/target/view-3dpie-backend-${de_ver}.jar .

zip -r 3dpie.zip  ./view-3dpie-backend-${de_ver}.jar ./plugin.json

rm -f ./view-3dpie-backend-${de_ver}.jar
