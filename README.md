<!-- retro visitor counter -->
<p align="center"> 
  <img src="https://profile-counter.glitch.me/ValAug-AWS-S3-Data-Pipeline-EventBridge-Cross-Account-Sync/count.svg" />
</p>


# AWS-S3-Data-Pipeline-EventBridge-Cross-Account-Sync



###### Cloud - :cloud:
![AWS](https://img.shields.io/badge/AWS-%23FF9900.svg?style=for-the-badge&logo=amazon-aws&logoColor=white)

###### IaaC
![Terraform](https://img.shields.io/badge/terraform-%235835CC.svg?style=for-the-badge&logo=terraform&logoColor=white)

# AWS S3 cross-account data sync diagram 
![Diagram](https://github.com/ValAug/AWS-S3-Data-Pipeline-EventBridge-Cross-Account-Sync/blob/main/Data-Sync.png)

# Purpose

Shows how to use AWS with Terraform to accomplish the following tasks:

* AWS S3 Data Pipeline project enables smooth data synchronization between AWS S3 buckets in different accounts using Terraform



# Prerequisites
* You must deploy account A configuration from this repo: 
    - https://github.com/ValAug/secure-s3-deployment.git
    
* Once is completed you must copy the output of the __bucket ARN__:
    - __arn:aws:s3:::destination-bucket-name-account-b/*__  - COPY THIS ARN and Paste it in the __lambda_execution_role policy__

* You must have Terraform installed [How to install terraform guide](https://learn.hashicorp.com/tutorials/terraform/install-cli)

# Providers version
```
Terraform v1.0.1

```
# Cautions

* As an AWS best practice, grant this code least privilege, or only the 
  permissions required to perform a task. For more information, see 
  [Grant Least Privilege](https://docs.aws.amazon.com/IAM/latest/UserGuide/best-practices.html#grant-least-privilege) 
  in the *AWS Identity and Access Management 
  User Guide*.
* This code has been tested in us-west-1 AWS Regions only. However it should work in any other region. 
* Running this code __it might__ result in charges to your AWS account.

# How to run this code

- [How to run this code](#how-to-run-this-code)
  - [Quick Start](#quick-start)
  - [Quick Destroy](#quick-destroy)
  - [Notes](#notes)

## Quick Start

It will deploy to the account setup for the aws cli called 'default' or 'profile' set it

```bash
clone this repo
cd AWS-S3-Data-Pipeline-EventBridge-Cross-Account-Sync
terraform init
terraform validate
terraform plan
terraform apply --auto-approve
```

## Quick Destroy

```bash
terraform destroy --auto-approve
```

## Notes

- clone this repo
- cd to the the directory secure-s3-deployment
- use terraform __init__ command prepare your working directory for other commands
- terraform __validate__ command check whether the configuration is valid
- terraform __plan__ command show changes required by the current configuration
- terraform __apply__ create or update infrastructure
- Alternate command : terraform apply -auto-approve
- terraform __destroy__ destroy previously-created infrastructure
- Alternate command : terraform destroy -auto-approve
- terraform __fmt__ reformat your configuration in the standard style

- Update the unique bucket name in the __variable.tf__ file

```

bucket_name = "unique-backet-name"
target_bucket = "unique-backet-name"
