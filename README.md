# Testing

Run with `ksv Running_13-05-32.ttbin ttbin.yaml`

Dump with `ksdump Running_13-05-32.ttbin ttbin.yaml`

JSON Dump with `jq` filter
```
ksdump Running_13-05-32.ttbin ttbin.yaml | jq '.records[] | select(.record_tag == "record_type_battery_record").data.level'
```
