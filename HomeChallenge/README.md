*******************AWS**************************************

This repository is an introductory example to Infrastructure as Code (IAC) with AWS, Terraform to accomplish the homechallenege task.

provisioning of an EC2 instance.

Prerequisites
-------------
AWS Setup
AWS account
IAM User
AmazonEC2FullAccess
IAMFullAccess
VPC with NAT gateway

[default]
aws_access_key_id=xxxxx
aws_secret_access_key=xxxxx
homechallenge Keypair

Provision your Infrastructure
-----------------------------
Create two subnet one private and one public.
Created NAT gateway.
Create baston host in public subnet.(I used the instance which is already sitting in public subnet so this is not providioned using terraform)
Create ansiblecontroldev01,homechallenegedev01 in private subnet.
Create secuirty group to open 22,443 to subnet of the bastonhost.

Security Group
--------------
The security group is configured to allow ssh and http traffic to the instance and anything away from the instance.

EC2 Instance
---------------
The EC2 instance is setup with an ubuntu 22.04 as amazon machine image (ami).
One EC2 provisioned for ansible (ansiblecontroldev01).
One EC2 provisioned to execute given security agent bash script(homechallenegedev01).
Manually installed python and ansible vm (ansiblecontroldev01) since there is no remote provision available from local unless we have private VPN

Checking the Result
-----------------------
The output module generate the output of private IP for ansiblecontroldev01,homechallenegedev01 VM.
Install ansible in vm homechallenegedev01 and validate the configurations.

Playground
--------------

run terraform ini,plan,apply command.
validate the secuirty group and instance created by meeting the stanard security policy

