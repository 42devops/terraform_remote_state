variable "access_key" {
  description = "The AWS access key."
}

variable "secret_key" {
  description = "The AWS secret key"
}

variable "region" {
  description = "The AWS region."
  default     = "ap-northeast-2"
}

variable "prefix" {
  description = "The Name of our org. i.e. examplecom."
  default     = "xiangxutest"
}

variable "environment" {
  description = "The name of our environment, i.e. development."
  default     = "development"
}

output "s3_bucket_id" {
  value = "${aws_s3_bucket.remote_state.id}"
}
