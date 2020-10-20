#!/bin/bash

echo "******* PUSHING IMAGE ***********"

IMAGE="maven-project"

echo "**************Docker login *************"

docker login -u nenadmiladin -p $PASS

echo "******** TAGING IMAGE ************"

docker tag $IMAGE:$BUILD_TAG nenadmiladin/$IMAGE:$BUILD_TAG

echo "******* PUSHING IMAGE ***********"

docker push nenadmiladin/$IMAGE:$BUILD_TAG
