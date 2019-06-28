#!/bin/sh

CONTAINER_NAME=maven-jdk8-shared
BASE=$(pwd)
LOCAL_MVN_CACHE=$HOME/.m2
PARAM_ADD=

CMD_RUN=docker run -v $BASE:/src -v $LOCAL_MVN_CACHE:/root/.m2 $PARAM_ADD $CONTAINER_NAME $@
echo $CMD_RUN
exec $CMD_RUN
