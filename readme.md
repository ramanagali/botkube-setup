# Botkube 

## Source
- For installation refer https://www.botkube.io/installation/slack/#using-helm
- For Configurations refer https://www.botkube.io/configuration/#resource-config-yaml-syntax

## New Installation Instructions

- open botkube-install.sh file, update below info & save
    - SLACK_CHANNEL_NAME
    - SLACK_API_TOKEN_FOR_THE_BOT
    - CLUSTER_NAME
- resource_config.yaml is generic, add/update/delete with required info
- run the botkube-install.sh

## Re-installation Instructions
- run botkube-uninstall.sh
- follow the above new installation instructions

## Update Existing Installation
- open botkube-update.sh file, update CLUSTER_NAME
- run botkube-update.sh
NOTE: refer above Source Configurations to override the settings using helm
