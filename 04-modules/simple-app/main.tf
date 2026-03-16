terraform {
  # Assumes s3 bucket and dynamo DB table already set up
  # See /code/03-basics/aws-backend
  backend "s3" {
    bucket         = "vishesh-has-his-bucket-2"
    key            = "06-organization-and-modules/web-app/terraform.tfstate"
    region         = "ap-southeast-2"
    dynamodb_table = "terraform-state-locking"
    encrypt        = true
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region = "ap-southeast-2"
}

variable "db_pass_1" {
  description = "password for database #1"
  type        = string
  sensitive   = true
}

variable "db_pass_2" {
  description = "password for database #2"
  type        = string
  sensitive   = true
}

module "simple_app_1" {
  source = "../simple-app-module"

  # Input Variables
  bucket_prefix    = "simple-app-1-data"
  domain           = "devopsdeployed.com"
  app_name         = "app-1"
  environment_name = "production"
  instance_type    = "t2.micro"
  create_dns_zone  = true
  db_name          = "simpleapp1db"
  db_user          = "foo"
  db_pass          = var.db_pass_1
}

module "simple_app_2" {
  source = "../simple-app-module"

  # Input Variables
  bucket_prefix    = "simple-app-2-data"
  domain           = "anotherdevopsdeployed.com"
  app_name         = "app-2"
  environment_name = "production"
  instance_type    = "t2.micro"
  create_dns_zone  = true
  db_name          = "simpleapp2db"
  db_user          = "bar"
  db_pass          = var.db_pass_2
}
