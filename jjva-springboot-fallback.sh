#!/bin/bash

mss_pod_app="mss-springboot-pod"
imageVersion="eagunuworld/jjva-mss-mdb-springboot-app:v$BUILD_NUMBER"

sleep 20s

if [[ $(kubectl -n ibm-ucd get deploy ${mss_pod_app} --timeout 5s) = *"successfully rolled out"* ]];
then
	echo "Deployment ${mss_pod_app} was successful"
    exit 0;
else
	echo "mss pod Dployment ${mss_pod_app} Is Up And Running"
	echo "Here is the image: ${imageName}"
fi

#
# if [[ $(kubectl -n default rollout status deploy ${deploymentName} --timeout 5s) != *"successfully rolled out"* ]];
# then
# 	echo "Deployment ${deploymentName} Rollout has Failed"
#     kubectl -n default rollout undo deploy ${deploymentName}
#     exit 1;
# else
# 	echo "Deployment ${deploymentName} Rollout is Success"
# fi
