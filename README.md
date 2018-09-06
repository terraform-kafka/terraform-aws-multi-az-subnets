# Terraform Module: AWS Multi-AZ Subnets

> This repository is a [Terraform](https://terraform.io/) Module to use create multi-AZ AWS subnets.

## Table of Contents

- [Requirements](#requirements)
- [Usage](#usage)
  - [Module Variables](#module-variables)
  - [Module Outputs](#module-variables)
- [Maintainers](#maintainers)

## Requirements

This module requires Terraform version `0.10.x` or newer.

## Usage

Add the module to your Terraform resources:

```hcl
module "zookeeper-subnets" {
  source      = "github.com/terraform-kafka/terraform-aws-multi-az-subnets?ref=v0.0.1"
  name        = "broker-zookeeper-group"
  vpc_id      = "vpc-2f09a348"
  cidr_blocks = [
    "172.20.132.0/27",
    "172.20.132.32/27",
    "172.20.132.64/27",
  ]
}
```

Load the module using `terraform get` and apply using `terraform apply`.

### Module Variables

Available variables are listed below, along with their default values:

| variable      | description                                 |
|---------------|---------------------------------------------|
| `name`        | The prefix name for subnets.                |
| `vpc_id`      | The VPC where subnets are allocated.        |
| `cidr_blocks` | List of CIDR blocks to allocate on the VPC. |
| `zones`       | List of AZ used to create the subnets.      |
| `tags`        | Extra tags to add on the created subnets.   |

### Module Outputs

Available outputs are listed below, along with their description:

| output         | description                 |
|----------------|-----------------------------|
| `subnet_ids`   | List of created subnet ids  |
| `subnet_cidr`  | List of created subnet cidr |

## Maintainers

This module is currently maintained by the individuals listed below.

- [Bryan Frimin](https://github.com/gearnode)
