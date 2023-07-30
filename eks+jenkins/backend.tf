terraform {
  backend "s3" {
    bucket = "mystate-1"
    key    = "my-terraform-project"
    region = "eu-north-1"
    shared_credentials_file = "~/.aws/credentials"
  }
}

