#!/bin/sh
[ x"de_ver" = x"" ] && de_ver=1.18.7
rm -f kylin.zip

mvn clean package -U -Dmaven.test.skip=true

cp kylin-backend/target/kylin-backend-${de_ver}.jar .

zip -r kylin.zip  ./kylin-backend-${de_ver}.jar ./kylinDriver   ./plugin.json

rm -f ./kylin-backend-${de_ver}.jar
