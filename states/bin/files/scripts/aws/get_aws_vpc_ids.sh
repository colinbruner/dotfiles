#!/bin/bash
aws ec2 describe-vpcs | jq -c ".Vpcs[] | {name: .Tags[].Value, id: .VpcId}"
