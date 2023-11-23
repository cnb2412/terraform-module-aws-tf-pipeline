# Terraform module to create a CICD pipline Terraform pipeline

This module allows for creating multistate CICD piplines on AWS to develop and deploy
IaC.

It follows a trunk-based approach. That is, it creates a pipeline that is triggered by a commit to the main branch of a git repo and deploys automatically to a test env. Furthermore, it creates a second pipeline tht is triggered manually to deloy the same branch to a prod env.

## Usage

Simple usage is as follows:

```hcl
module "cicd-pipeline" {
  source = "git::https://github.com/cnb2412/terraform-module-aws-tf-pipeline.git"
  resource_prefix = <prefixes_for_ressources>
}
```

## Features

The Project Factory module will take the following actions:

1. Create a S3 bucket for TF state files
1. CodeRepo for TF IaC code


<!-- BEGIN_TF_DOCS -->
## Inputs