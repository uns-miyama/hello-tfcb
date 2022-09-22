terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "aucnet-inc"
    workspaces {
      name = "hello-tf"
    }
  }
}

provider "aws" {
  access_key = var.access_key
  secret_key = var.secret_key
  region = var.region
}

resource "aws_vpc" "hashicat" {
  cidr_block           = var.address_space
  enable_dns_hostnames = true
}

resource "aws_subnet" "hashicat" {
  vpc_id     = aws_vpc.hashicat.id
  cidr_block = var.subnet_prefix
}

resource "aws_instance" "hashicat" {
  ami                         = var.ami
  count                       = var.hello_tf_instance_count
  instance_type               = var.hello_tf_instance_type
  subnet_id                   = aws_subnet.hashicat.id
}
