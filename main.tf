locals {
  name_prefix = terraform.workspace == "default" ? "" : "${terraform.workspace}-"
  name        = "${local.name_prefix}${var.project.name}-${var.name}"
}

terraform {
  required_version = ">= 0.12"
}

/**
 * The ECR repository.
 */
resource "aws_ecr_repository" "main" {
  name = local.name
  tags = var.project.tags
}
