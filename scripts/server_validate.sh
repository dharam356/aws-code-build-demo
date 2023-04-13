#!/usr/bin/env bash
export status=$(curl --write-out %{http_code} --silent --output /dev/null http://localhost:8008)
echo ${status}
while true
do
    if [ 200 == ${status} ]
    then
        exit 0
    else
        echo "check server is running?"
        echo ${status}
        sleep 3s
    fi
done