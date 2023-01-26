# Udacity Cloud Devops Nanodegree
# Project 2: Deploy a highly available webapp on AWS
**Author:<a> Mouhamadou GUEYE</a>**

**Date: December 23, 2019**
## Table of contents

<ul>
<li><a href="#intro">Problematic</a></li>
<li><a href="#requirement">Requirements</a></li>
<li><a href="#projects">Deployments</a></li>
<li><a href="#projects">references</a></li>
</ul>

<a id="intro"></a>
# Introduction
Your company is creating an Instagram clone called Udagram. Developers pushed the latest version of their code in a zip file located in a public S3 Bucket.
You have been tasked with deploying the application, along with the necessary supporting software into its matching infrastructure.
This needs to be done in an automated fashion so that the infrastructure can be discarded as soon as the testing team finishes their tests and gathers their results.

## Requirements:
<a><a href="#requirement"></a>
### Server specs
- Deploy a wep application using infractructure as a code including a launch configuration that will be used by an auto scaling group.
### Security groups and IAM Role
The servers will run inside a security group and the file that will be used for the project have to download from udacity s3 bucket. An IAM role will be use to allow s3 bucket to our instances

## Projects
<a><a href="#projects"></a>
 
### network infracture
The network infractructure has been created first including the VPC (Virtual Private cloud) inside which our infractrure is created, the subnets, Internet gateway, Route Table,  NACL. 
 The scripts `udagram-infra.yaml` and `udagram-infra-params.json` are used for the creation of the clous network for the udagram application

### Bastion host 
The scipts `bastion.yaml` is used to set up bastion host to allow sshing info out private subnets. The bastion host is placed in a public subnet with port 22 ans would nerd an ssh key.

### webserver infractructure
For the deployment of the webserver, the scripts `udagramservers.yaml` is developped. The application is deployed in private subnets and a Load Balancer in public subnets. For high availability, the application is deployment in more than one Azs.

### website application url
Thé deploy application is available in this link [udagram](http://udagr-applo-7lzpj7uge8hq-1893948389.eu-west-3.elb.amazonaws.com/index.html)

## References
1. cloudformation deepdive https://github.com/natonic/CloudFormation-Deep-Dive (linuxacamademy.com)
2. https://blog.boltops.com/2018/02/14/aws-cloudformation-declarative-infrastructure-code-tutorial
3. https://docs.databricks.com/administration-guide/cloud-configurations/aws/iam-roles.html
4. https://docs.aws.amazon.com/cloudformation/index.html
5. https://github.com/guardian/amigo/blob/master/cloudformation.yaml
