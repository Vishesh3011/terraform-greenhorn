terraform {
    required_providers {
      aws = {
        source = "hashicorp/aws"
        version = "~> 3.0"
      }
    }
}

provider "aws" {
  region = "ap-southeast-2"
}

resource "aws_instance" "example" {
    ami = "ami-0ac4101c751eae35f"
    instance_type = "t2.micro"
}