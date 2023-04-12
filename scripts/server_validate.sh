#!/usr/bin/env bash
status=$(curl --write-out %{http_code} --silent --output /dev/null http://localhost:8008)
echo ${status}
while [ true ]
do
    if [ ${status} == '200' ]
    then
        exit 0
    else
        echo "check server is running?"
        echo ${status}
        sleep 3s
    fi
done