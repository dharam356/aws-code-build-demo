#!/usr/bin/env bash
status=$(curl --write-out %{http_code} --silent --output /dev/null http://localhost:8008)
while [ true ]
do
    if [ ${status} = '{"status":"OK"}' ]
    then
        exit 0
    else
        echo "check server is running?"
        echo ${status}
        sleep 3s
    fi
done