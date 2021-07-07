#######################################
# Use an InfluxDB Cloud username and token
# with Basic Authentication
# to query the InfluxDB 1.x-compatibility API
#######################################
curl --get "http://localhost:8086/query" \
  --user "exampleuser@influxdata.com":"mYSuP3rs3cREtT0k3N" \
  --header 'Content-type: application/json' \
  --data-urlencode "db=mydb" \
  --data-urlencode "q=SELECT * FROM cpu_usage"
