# AWS ECR Repository module

This module is a simple wrapper around the aws resource `aws_ecr_repository`.

## Usage

```hcl
/**
 * Initialize the project
 */
module "project" {
  source  = "PGBI/project/aws"
  version = "~>0.1.0"

  name     = "myproject"
  vcs_repo = "github.com/account/project"
}

/**
 * Creates an ECR repository
 */
module "repository" {
  source  = "PGBI/ecr-repository/aws"
  version = "~>0.1.0"

  name    = "myapp"
  project = module.project
}
```
