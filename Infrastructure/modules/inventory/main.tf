resource "local_file" "inventory" {
  content = <<EOT
[app_server]
${var.instance_ip} ansible_user=ubuntu ansible_ssh_private_key_file=~/.ssh/id_rsa
EOT
  filename = "../ansible/inventory"
}
