#!/bin/bash

aws ec2 describe-instances  | jq ".Reservations[].Instances[] | {name: .Tags[].Value, id: .InstanceId}"
