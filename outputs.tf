output "arn" {
  description = "ARN of the repository."
  value       = aws_ecr_repository.main.arn
}

output "name" {
  description = "The name of the repository."
  value       = aws_ecr_repository.main.name
}

output "url" {
  description = "URL of the repository."
  value       = aws_ecr_repository.main.repository_url
}
