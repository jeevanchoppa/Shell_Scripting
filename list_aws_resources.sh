#!/bin/bash

##########################
# Author: Jeevan
# Date: 09/09/25
# Description: This shell scripts list ec2-instances ids, s3 buckets, IAM users
##########################

set -x #debug mode

aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

aws s3 ls

aws iam list-users