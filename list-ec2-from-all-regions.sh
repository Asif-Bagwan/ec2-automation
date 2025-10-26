#!/bin/bash

#this script will list all the ec2's from all the regions on AWS Account


for region in $(aws ec2 describe-regions --query "Regions[*].RegionName" --output text); do
  echo "Region: $region"
  aws ec2 describe-instances --region $region --query "Reservations[*].Instances[*].[InstanceId,State.Name,InstanceType,PrivateIpAddress]" --output table
done

