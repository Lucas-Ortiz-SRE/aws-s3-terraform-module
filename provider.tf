#============================================#
#                PROVIDER AWS                #
#============================================#
provider "aws" {
  region = var.region
  default_tags {
    tags = {
      Managed = var.managed
      Owner = var.owner
    }
  }
}

# state.tf
terraform {
  backend "s3" {
    bucket = "infrastructure-state-terraform" 
    key    = "Application/production/terraform.tfstate"
    region = "us-east-1"
  }
}
