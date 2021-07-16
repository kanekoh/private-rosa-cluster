# ROSA Private Cluster with AWS PrivateLink

## Overview 

This is a script to deploy an envirnoment for a private ROSA cluster with AWS PrivateLink. This deploys as follows:
- bastion server
- Microsoft AD as Identity Provider for ROSA cluster
- VPC and private subnet(s) for ROSA Cluster
- STS definitions

## Requirement

### packages

- community.general
- community.aws collection
- python module
  - boto
  - boto3

## Before starts

It is required to create a key-pair before executing the playbook. This playbook does not create the key for ssh bastion node. And then, fill out the private key path at `bastion_privatekey` field in ./host_vars/bastion/main.yml file.

## How to execute

Provide some required information in `inventry.ini` and run the below command. You can get an environment which is able to deploy a private rosa cluster with AWS PrivateLink.

```
$ ansible-playbook -i inventry.yml deploy-environment.yml
$ ansible-playbook -i aws_ec2.yml configure-bastion.yml
```
## After install

### Set up rosa

See: https://docs.openshift.com/rosa/rosa_getting_started/rosa-setting-up-environment.html

First, login rosa. It needs to get token from the URL "https://cloud.redhat.com/openshift/token/rosa"

```
$ rosa login
```