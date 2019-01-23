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

## License

MIT
