#!/bin/bash

echo maven-project > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
echo $PASS >> /tmp/.auth

scp -i /opt/prod /tmp/.auth ubuntu@18.222.233.52:/tmp/.auth
scp -i /opt/prod ./jenkins/deploy/publish.sh ubuntu@18.222.233.52:/tmp/publish
ssh -i /opt/prod ubuntu@18.222.233.52 /tmp/publish
