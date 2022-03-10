#!/bin/bash

set -o xtrace
curl -s $1 -H 'Content-Type: application/json' -d '{"method":"'$2'","id":1,"jsonrpc":"2.0", "params":['$3']}' | jq '.["result"]' > data.json 2>&1
cat openrpc.json | jq '.["methods"][] | select(.name == "'$2'") | .["result"]["schema"]' > schema.json
npx ajv validate -s schema.json -d data.json
# rm schema.json data.json
