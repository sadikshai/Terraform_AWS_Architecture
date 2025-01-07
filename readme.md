# AWS VPC Terraform Configuration

This repository contains a Terraform configuration for setting up an AWS Virtual Private Cloud (VPC) environment. The architecture includes public and private subnets, an Internet Gateway, route tables, security groups, and an EC2 instance configured for web hosting.

## Architecture Overview

- **VPC**: A virtual network dedicated to your AWS account.
- **Subnets**:
  - **Public Subnet**: Hosts resources that need direct access to the internet.
  - **Private Subnet**: Hosts resources that do not require direct internet access.
- **Internet Gateway**: Allows communication between instances in the public subnet and the internet.
- **Route Tables**: Direct traffic within the VPC and to/from the internet.
- **Security Groups**: Control inbound and outbound traffic to instances.


## Prerequisites

- Terraform installed on your machine.
- AWS account with necessary permissions to create VPCs, subnets, EC2 instances, etc.

## How to Use

1. Clone this repository.
2. Navigate to the directory containing the Terraform files.
3. Initialize Terraform:


## Conclusion

This Terraform configuration provides a robust foundation for deploying a secure and scalable AWS infrastructure. It can be customized further based on specific requirements or expanded with additional resources as needed.


