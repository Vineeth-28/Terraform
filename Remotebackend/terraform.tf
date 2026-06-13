terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.50.0"
    }
  }

  backend "s3" {
    bucket       = "demo-state-bucket"
    key          = "terraform.tfstate"
    region       = "us-west-2"    # ✅ Must match actual bucket region
    use_lockfile = true            # ✅ Replaces deprecated dynamodb_table
  }
}