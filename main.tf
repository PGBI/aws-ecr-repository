terraform {
  required_version = ">= 0.12"
}

/**
 * The ECR repository.
 */
resource "aws_ecr_repository" "main" {
  name = var.name
  tags = var.project.tags
}
