terraform {
  backend "s3" {
    bucket         = "s3buckk8sproject-280288329292-us-east-2-an"
    region         = "us-east-2"
    key            = "e2e-k8s-project1/Jenkins-Server-TF/terraform.tfstate"
    dynamodb_table = "s3lockstate"
    encrypt        = true
  }
  required_version = ">=0.13.0"
  required_providers {
    aws = {
      version = ">= 2.7.0"
      source  = "hashicorp/aws"
    }
  }
}
