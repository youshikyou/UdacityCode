#!/bin/sh

# Use AWS CLI to get the most recent version of an AMI that 
# matches certain criteria. Has obvious uses. Made possible via
# --query, --output text, and the fact that RFC3339 datetime
# fields are easily sortable.

export AWS_DEFAULT_REGION=eu-west-2

aws ec2 describe-images \
 --filters Name=name,Values=ubuntu/images/hvm-ssd/ubuntu-trusty-14.04-amd64* \
 --query 'Images[*].[ImageId,CreationDate]' --output text \
 | sort -k2 -r \
 | head -n1