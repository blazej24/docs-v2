#######################################
# Use a token in the Authorization header
# to query the InfluxDB 1.x-compatibility API
#######################################
curl --get "http://localhost:8086" \
  --header "Authorization: Token mYSuP3rs3cREtT0k3N"
  --header 'Content-type: application/json' \
  --data-urlencode "db=mydb" \
  --data-urlencode "q=SELECT * FROM cpu_usage"
