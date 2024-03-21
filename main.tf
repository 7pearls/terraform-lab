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
