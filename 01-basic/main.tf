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

resource "aws instance" "example" {
    ami = "something..."
    instance_type = "t2.micro"
}