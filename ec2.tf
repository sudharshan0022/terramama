terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "web" {
  Ami           = "ami-053b0d53c279acc90"
  instance_type = "t3.micro"

  tags = {
    Name = "HelloWorld"
  }
count = 3
}
