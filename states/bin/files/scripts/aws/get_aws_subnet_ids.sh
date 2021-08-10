#!/bin/bash
echo "NOTE: may provide wrong names if multiple tags..."
aws ec2 describe-subnets | jq -c ".Subnets[] | {name: .Tags[].Value, id: .SubnetId}"
