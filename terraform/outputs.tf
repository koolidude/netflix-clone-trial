output "ecr_repository_url" {
  value = length(aws_ecr_repository.netflix_clone) > 0 ? aws_ecr_repository.netflix_clone[0].repository_url : data.aws_ecr_repository.existing_netflix_clone.repository_url
}

output "api_gateway_url" {
  value = aws_api_gateway_deployment.netflix_clone_deployment.invoke_url
}
