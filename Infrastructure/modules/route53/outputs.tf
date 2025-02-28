output "dns_name" {
  value = aws_route53_record.app_dns.fqdn
}
