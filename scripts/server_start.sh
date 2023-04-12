#!/usr/bin/env bash
cd /home/ec2-user/server
java -jar -Dserver.port=8008 ./target/aws-cicd-code-build.jar > /dev/null 2> /dev/null < /dev/null &