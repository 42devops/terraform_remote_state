variable "region" {
  description = "The AWS region."
  default     = "ap-northeast-2"
}

variable "prefix" {
  description = "The Name of our org. i.e. examplecom."
  default     = "examplecom"
}

variable "environment" {
  description = "The name of our environment, i.e. development."
  default     = "development"
}


output "s3_bucket_arn" {
  value       = aws_s3_bucket.terraform_remote_state.arn
  description = "The ARN of the S3 bucket"
}

output "dynamodb_table_name" {
  value       = aws_dynamodb_table.terraform_locks.name
  description = "The name of the DynamoDB table"
}

provider "aws" {
  region = "${var.region}"
}
