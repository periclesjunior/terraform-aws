# add the provider, this code will connect to AWS cloud
provider "aws" {
  region = var.aws_region
  profile = var.aws_profile
}
