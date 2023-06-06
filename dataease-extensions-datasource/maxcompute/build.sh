#!/bin/sh
[ x"$de_ver" = x"" ] && de_ver=1.18.7
rm -f maxcompute.zip 

mvn clean package

cp maxcompute-backend/target/maxcompute-backend-${de_ver}.jar .

zip -r maxcompute.zip  ./maxcompute-backend-${de_ver}.jar ./maxcomputeDriver   ./plugin.json

rm -f ./maxcompute-backend-${de_ver}.jar
