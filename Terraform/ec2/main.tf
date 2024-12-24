provider "aws" {
  region = var.region
}

resource "aws_instance" "this" {
  ami           = var.ami
  instance_type = "t2.micro"

  tags = {
    Name = var.instance_name
  }
}
