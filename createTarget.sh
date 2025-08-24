#!/bin/bash
echo "Creating target number $1"


curl 'https://api.probely.com/targets/?check_fullpath=true' \
-H 'Content-Type: application/json' \
-H 'Accept: application/json' \
-H 'Authorization: JWT <YOUR_API_TOKEN>' \
  --data-raw '{"type":"single","site":{"name":"https://umuv.world/","url":"https://umuv.world/"},"labels":[],"query":{},"scanning_agent":null,"skip_reachability_check":false,"skip_redirect_check":false,"skip_api_schema_url_check":false,"duplicate_check":false,"skip_fullpath_warning":false,"check_fullpath":true,"unlimited":true}'
