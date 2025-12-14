# AWS EC2 Hello World Lab

First hands-on lab from the AWS Certified Solutions Architect Associate course (Stephane Maarek).

## Objective
Create an Amazon Linux 2 EC2 instance that:
- Can be accessed via SSH
- Is reachable over HTTP (port 80)
- Automatically displays a simple web page upon launch

## Architecture Created
- Default VPC
- Public Subnet
- Internet Gateway
- Security Group with:
  - SSH (port 22) from my IP
  - HTTP (port 80) from 0.0.0.0/0
- EC2 instance (t2.micro or t3.micro – Free Tier eligible)
- User Data script to automatically install and configure Apache

## User Data Script
See file `user-data.sh`

## Final Result
The instance displays this page when accessed via HTTP:

![Web page working](./screenshots/hello-world.png)

![Successful SSH connection](./screenshots/iamrole+ec2connect.png)

## What I Learned
- IAM user creation and permissions
- Launching EC2 instances
- Security Groups (inbound rules)
- User Data scripts
- Connecting via SSH and HTTP