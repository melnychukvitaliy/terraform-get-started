output "alb_hostname" {
  value = aws_alb.main.dns_name
}

output "ecr_image_repository_url" {
  value = aws_ecr_repository.main.repository_url
}

output "ecs_task_execution_role_arn" {
  value = aws_iam_role.ecs_task_execution_role.arn
}
