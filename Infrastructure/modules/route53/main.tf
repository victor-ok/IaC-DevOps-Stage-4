resource "aws_route53_record" "app" {
  zone_id = "Z123456789"
  name    = var.domain_name
  type    = "A"
  ttl     = 300
  records = [var.instance_ip]
}
