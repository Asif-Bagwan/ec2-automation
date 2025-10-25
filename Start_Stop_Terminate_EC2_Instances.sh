#!/bin/bash

######################################
#Author: Asif Bagwan
#Date: 25/10/2025
#Description: This script will start any number of EC2 instances as pr your requirement, wait for 2 mins, stop the instances, wait for 2 mins and terminate them all.
######################################

# This script will start 10 ec2 instances and stop them after 5 mins.

# Launch 10 EC2 Instances
INSTANCES=$(aws ec2 run-instances \
  --image-id ami-02d26659fd82cf299 \
  --count 10 \
  --instance-type t2.micro \
  --query "Instances[*].InstanceId" \
  --output text)

echo "✅ Launched instances: $INSTANCES"

# Wait until they are running
echo "⏳ Waiting for instances to enter RUNNING state..."

aws ec2 wait instance-running --instance-ids $INSTANCES

echo "✅ Instances are now running."

echo "Waiting for 2 minutes so that you can verify on AWS Console to see instances are running"

sleep 120

# Stop the instances

echo "Stopping instances..."

aws ec2 stop-instances --instance-ids $INSTANCES > /dev/null

# Wait until stopped

echo "⏳ Waiting for instances to STOP..."

aws ec2 wait instance-stopped --instance-ids $INSTANCES

echo "✅ Instances stopped."

# Terminate the instances

echo "Terminating instances..."

aws ec2 terminate-instances --instance-ids $INSTANCES > /dev/null

# Wait until terminated

echo "⏳ Waiting for TERMINATION..."

aws ec2 wait instance-terminated --instance-ids $INSTANCES

echo "✅ All instances terminated successfully."

