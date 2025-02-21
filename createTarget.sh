#!/bin/bash
echo "Creating target number $1"


curl 'https://api.qa.probely.dev/targets/?check_fullpath=true' \
  -H 'accept: */*' \
  -H 'accept-language: en-US,en;q=0.9' \
  -H 'authorization: JWT <insert_jwt_token_value_here>' \
  -H 'cache-control: no-cache' \
  -H 'content-type: application/json' \
  -H 'origin: http://127.0.0.1:3000' \
  -H 'pragma: no-cache' \
  -H 'priority: u=1, i' \
  -H 'referer: http://127.0.0.1:3000/' \
  -H 'sec-ch-ua: "Not A(Brand";v="8", "Chromium";v="132", "Google Chrome";v="132"' \
  -H 'sec-ch-ua-mobile: ?0' \
  -H 'sec-ch-ua-platform: "macOS"' \
  -H 'sec-fetch-dest: empty' \
  -H 'sec-fetch-mode: cors' \
  -H 'sec-fetch-site: cross-site' \
  -H 'user-agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36' \
  --data-raw '{"type":"single","site":{"name":"https://umuv.world/","url":"https://umuv.world/"},"labels":[],"query":{},"scanning_agent":null,"skip_reachability_check":false,"skip_redirect_check":false,"skip_api_schema_url_check":false,"duplicate_check":false,"skip_fullpath_warning":false,"check_fullpath":true,"unlimited":true}'
