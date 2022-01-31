#!/bin/bash
docker container run -p 80:80 -d --name webserver narendra3425/webserver
echo 'Access website at http://<public_ip>'