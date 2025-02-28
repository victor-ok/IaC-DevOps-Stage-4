resource "aws_instance" "app" {
  ami             = "ami-12345678"
  instance_type   = var.instance_type
  key_name        = var.key_name
  security_groups = [var.security_group_id]

  tags = {
    Name = "AppServer"
  }
}

output "instance_ip" {
  value = aws_instance.app.public_ip
}
