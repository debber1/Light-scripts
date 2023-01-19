#!/bin/bash

# Turn the lights off 

curl -X PUT -H 'Content-Type: application/json' -d '{"status":"OFF"}' http://milight-hub.local/gateways/Kot 