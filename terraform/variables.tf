variable "aws_region" {
  description = "The AWS region to deploy resources in"
  default     = "eu-central-1"
}

variable "project_name" {
  description = "The name of the project"
  default     = "codebuild-test-env"
}

variable "account_id" {
  description = "AWS Account ID"
  type        = string
}


variable "role_name" {
  description = "IAM Role Name for S3 Access"
  default        = "s3-bucket-role"
}