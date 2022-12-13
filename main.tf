locals {
  tags = {
    terraform = true
    Name      = var.key_name
  }
}

resource "tls_private_key" "this" {
  count = var.create_key ? 1 : 0
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "generated_key" {
  count = var.create_key ? 1 : 0
  key_name   = var.key_name
  public_key = tls_private_key.this[count.index].public_key_openssh
  depends_on = [tls_private_key.this]

}

resource "local_file" "key_file" {
  count = var.create_key_file ? 1 : 0 
  content   = tls_private_key.this[count.index].private_key_pem
  filename  = var.key_file_name
  file_permission = var.file_permission
  depends_on = [tls_private_key.this]
}