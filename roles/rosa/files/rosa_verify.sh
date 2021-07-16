#!/bin/bash

export TOKEN=$1
export REGION=$2

set -x 

rosa login --token="$TOKEN"

# Verify Permissions
rosa verify permissions --region $REGION

# Verify Quota
rosa verify quota --region $REGION
