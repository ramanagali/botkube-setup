#!/usr/bin/env bash
# export PATH="$PATH:/usr/local/bin/"
# export AWS_REGION="ap-southeast-1"

# re-requisites
helm repo add infracloudio https://infracloudio.github.io/charts
helm repo update
# kubectl delete ns botkube
kubectl create ns botkube

#vars
SLACK_CHANNEL_NAME="mac-minikube"
CLUSTER_NAME="mac-minikube"
SLACK_API_TOKEN_FOR_THE_BOT="xxxxxxxxxx"
echo $SLACK_API_TOKEN_FOR_THE_BOT

sed "s/CLUSTER_NAME/$CLUSTER_NAME/g" resource_config.yaml > resource_config_tmp.yaml

# command
helm upgrade -i --version v0.12.3 botkube --namespace botkube \
-f ./resource_config_tmp.yaml \
--set communications.slack.enabled=true \
--set communications.slack.channel=$SLACK_CHANNEL_NAME \
--set communications.slack.token=$SLACK_API_TOKEN_FOR_THE_BOT \
--set config.settings.clustername=$CLUSTER_NAME \
--set config.settings.kubectl.enabled=true \
--set image.repository=infracloudio/botkube \
--set image.tag=v0.12.3 \
infracloudio/botkube

  