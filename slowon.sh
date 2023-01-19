#!/bin/bash

# Set colour to yellowish and minimum brightness

curl -X PUT -H 'Content-Type: application/json' -d '{"status":"ON"}' http://milight-hub.local/gateways/Kot 
curl -X PUT -H 'Content-Type: application/json' -d '{"color":{"r":255,"g":150,"b":0}}' http://milight-hub.local/gateways/Kot
curl -X PUT -H 'Content-Type: application/json' -d '{"brightness":"41"}' http://milight-hub.local/gateways/Kot

# Slowly increase the brightness over 10 minutes or so.

for (( c=41; c<=255; c++ ))
do 
    echo "{\"brightness\":\"$c\"}"
    curl -X PUT -H 'Content-Type: application/json' -d "{\"brightness\":\"$c\"}" http://milight-hub.local/gateways/Kot
    sleep 2.791
done