#!/bin/bash

curl -X POST -H 'Content-Type: application/json' -d '{commitId:$1}' http://rancher-ui.northcentralus.cloudapp.azure.com:8080/generic-webhook-trigger/invoke?token=testPipeline
