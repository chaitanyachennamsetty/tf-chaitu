provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "ec2" {
  count         = 3
  ami           = "ami-0532be01f26a3de55"
  instance_type = "t2.micro"

  tags = {
    Name = "tf-chaitu"
  }
}
