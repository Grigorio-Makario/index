#!/bin/bash
sleep 5
status_code=$(curl --write-out %{http_code} --silent --output /dev/null http://localhost:9889/)

if [[ "$status_code" -ne 200 ]] ; then
    echo "Site status $status_code" build is failed
    exit 1
    else
    echo "Site status $status_code" Site online!
    exit 0
fi

