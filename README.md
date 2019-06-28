# AWS S3 state module for Terraform

A lightweight AWS S3 state module for Terraform.

## Usage

```
module "remote_state" {
  source     = "git@github.com:42devops/terraform_remote_state.git"
  prefix     = "${var.prefix}"
  envionment = "${var.environment}"
}
```

See `interface.tf` for additional configurable variables.

add `backend.hcl`

```
bucket         = "terraform-state"
region         = "us-east-2"
dynamodb_table = "terraform-locks"
encrypt        = true
```

add the terraform backend

```
terraform {
  backend "s3" {
    bucket         = "${var.bucket}"
    region         = "${var.region}"
    dynamodb_table = "${var.dynamodb_table}"
    key            = "example/terraform.tfstate"
    encrypt        = true
  }
}
```

run `terraform init` with `-backend-config`

```
$ terraform init -backend-config=backend.hcl
```

## License

MIT
