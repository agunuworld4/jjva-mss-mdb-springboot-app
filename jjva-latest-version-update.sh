#!/bin/bash
imageVersion="eagunuworld/jjva-mss-mdb-springboot-app:v$BUILD_NUMBER"
sed -i "s#cicd_latest_version#${imageVersion}#g" jjva-springboot-manfest.yml
cat jjva-springboot-manfest.yml |grep  'eagunu'
