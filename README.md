# aws-static-website

Simple static website built with Terraform, deployed to an AWS account of choice.
The static website featured in this repository (`src` folder) is a sample used for testing purposes: HTML, CSS & JavaScript are taken from this [codepen](https://codepen.io/lisilinhart/pen/MoqMQq).

**Technologies**

- Terraform
- AWS (S3, CloudFront, CloudWatch)
- Bash
- HTML
- CSS
- JavaScript

## Prerequisites

1. An AWS account;
2. The following **CLI software** installed and correctly configured in your local environment:
- [Terraform CLI](https://learn.hashicorp.com/tutorials/terraform/install-cli#install-terraform);
- [AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html);
3. An S3 bucket already existing and located in your AWS account, where the Terraform state will be stored remotely;

## Usage

### Deploy the whole stack

```shell script
# Make script executable
chmod +x ./scripts/deploy.sh
# Preview a Terraform infra deployment
./scripts/deploy.sh
# Deploy the whole stack
./scripts/deploy.sh apply
```

### Deploy frontend assets only

```shell script
# Make script executable
chmod +x ./scripts/deploy-frontend-assets.sh
# Deploy the static assets
./scripts/deploy-frontend-assets.sh
```

### Deploy the terraform infra only

```shell script
# Make script executable
chmod +x ./scripts/deploy-terraform.sh
# Preview a terraform infra deployment
./scripts/deploy-terraform.sh
# Deploy the Terraform infra
./scripts/deploy-terraform.sh apply
```

### Destroy the entire stack

```shell script
# Make script executable
chmod +x ./scripts/destroy-stack.sh
# Destroy all the Terraform infra (including the static frontend assets)
./scripts/destroy-stack.sh
```

### Run a small load test

```shell script
# Make script executable
chmod +x ./scripts/load-test.sh
# Sent HTTP requests to given url
./scripts/oad-test.sh "https://xxxxxxxxxxx.cloudfront.net/"
```


## TODO
- Improve documentation;
- Create deployment pipelines using Github Actions;
