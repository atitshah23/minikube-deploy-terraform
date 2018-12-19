variable "AWS_ACCESS_KEY_ID" {
  description = "AWS Access Key"
}

variable "AWS_SECRET_ACCESS_KEY" {
  description = "AWS Secret Key"
}

variable "AWS_REGION" {
 description = "AWS Region"
 default = "us-east-1"
}

variable "aws_key_name" {
 description = "Key pair name to use for instances"
 default = "minikube-deploy-kp"
}

variable "aws_cluster_name" {
  description = "Name of AWS Cluster"
  default = "minikube-cluster"
}

variable "aws_ami_id" {
 description = "AMI id for UBUNTU 16.04"
 default = "ami-0f9cf087c1f27d9b1"
}

variable "aws_instance_type" {
 description = "Instance type"
 default = "t2.medium"
}

variable "public_key_path" {
 description = "Your public key path"
 default = "~/.ssh/id_rsa.pub"
}

variable "private_key_path" {
 description = "Your private key path"
 default = "~/.ssh/id_rsa"
}
