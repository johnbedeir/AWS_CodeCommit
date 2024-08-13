terraform {
  backend "s3" {
    bucket         = "mytfstate-bucket"
    key            = "terraform.tfstate"
    region         = "eu-central-1"
    encrypt        = true 
    dynamodb_table = "terraform-lock-table"
  }
}
