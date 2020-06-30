consul catalog datacenters

consul catalog nodes

consul catalog services

curl \
    http://127.0.0.1:8500/v1/catalog/services

dig go.service.consul

dig elastic.service.consul

dig consul.service.aws-us-west-2.consul

consul rtt app-i-0e7d2056308be168b postgres-i-0949fe7948e18943a

# Find the Postgres host
consul catalog nodes
ssh ubuntu@POSTGRES_HOST

# On the Postgres host
consul connect proxy -sidecar-for postgres

# On the App host
consul connect proxy -sidecar-for go
# consul connect proxy -service go -upstream postgres:21000

consul-template -template "demo.tpl:out.txt" -once

consul kv write foo bar

# Elastic Info
# hosts => ["elastic.service.consul:9200"]
# index => "logstash-vault"
# user => "elastic"
# password => "changeme"

# InfluxDB Info
# [[outputs.influxdb]]
# urls = ["http://influxdb.service.consul:8086"]
# database = "telegraf"
# username = "telegraf"
# password = "telegraf"

