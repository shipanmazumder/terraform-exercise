terraform {
  backend "s3" {
    bucket = "shipan-vprofile-kops-state"
    key    = "terraform/backend"
    region = "us-east-1"
  }
}
