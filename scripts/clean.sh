#!/bin/bash
container_id=$(docker container ls -a -q -f name=webserver1)
if [ ! -z $container_id ] ; then docker container rm -f $container_id;echo "webserver1 container has been removed";  fi
image_id=$(docker image ls|grep 'taherh257/webserver1'|tr -s ' '|cut -d' ' -f3)
if [ ! -z $image_id ] ; then docker image rm -f $image_id;  fi
