#!/usr/bin/env bash
# export PATH="$PATH:/usr/local/bin/"
# export AWS_REGION="ap-southeast-1"

helm uninstall botkube -n botkube

kubectl delete namespace botkube