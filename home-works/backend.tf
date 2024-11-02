terraform {
  backend "s3" {
    bucket  = "jenkins-s3-marlen"
    key     = "sessions/home-works/terraform.tfstate"
    region  = "us-east-1"
    encrypt = true

  }
}