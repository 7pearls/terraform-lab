terraform {
required_version = “~> 1.1.7”

required_providers {
aws = {
	source = “hashicorp/aws”
	version = “~> 3.7”
	}
	random = “>= 2”
	}
}
provider "aws" {
  region  = "ap-southeast-2"
  profile = "jbarik"
}

resource "aws_instance" "lab1" {
  ami           = "ami-04fbdc21b8a792a0e"
  instance_type = "t2.micro"
  count = 2

  tags = {
    Name = "lab1"
  }
}
