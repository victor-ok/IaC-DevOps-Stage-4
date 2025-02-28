output "instance_ip" {
  value = aws_instance.devops_stage4_instance.public_ip
}

output "domain" {
  value = var.domain_name
}

output "application_url" {
  value = "https://${var.domain_name}"
}