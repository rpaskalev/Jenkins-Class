terraform {
  backend "s3" {
    bucket = "your_bucket"
    key    = "jenkins/terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"
  default_tags {
    tags = {
      owner = "rady"
    }
  }
}
