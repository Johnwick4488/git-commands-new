terraform {
  backend "s3" {
    bucket         = "my-new-bucket000044"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
  }
}
