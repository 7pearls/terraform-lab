terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
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
