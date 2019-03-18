#!/bin/bash

# Name: b x t = a+1 w+1 s+1 (I had to call it something & I hate long names...).
# A little shell script to set AWS environment variables based upon AWS
# profiles. The main use case is to easily make profile-based vars easily
# accessible to tools other than the AWS CLI e.g. Ansible.

# Usage: source bxt <aws profile to load>

ARGS="$@"

# Access key
aws_access_key=`aws configure get aws_access_key_id --profile $1`
echo $aws_access_key
export AWS_ACCESS_KEY=$aws_access_key

# Secret bit
aws_secret_key=`aws configure get aws_secret_access_key --profile $1`
export AWS_SECRET_KEY=$aws_secret_key

