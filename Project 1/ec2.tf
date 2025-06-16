resource "tls_private_key" "ssh_key" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "generated" {
  key_name   = "terraform-key"
  public_key = tls_private_key.ssh_key.public_key_openssh
}

resource "aws_instance" "main" {
  ami                         = var.aws_ec2_ami_id
  instance_type               = var.instance_type
  subnet_id                   = aws_subnet.main.id
  vpc_security_group_ids      = [aws_security_group.ssh_only.id]
  key_name                    = aws_key_pair.generated.key_name
  associate_public_ip_address = true

  tags = {
    Name = "SSH-Only-Instance"
  }
}

resource "local_file" "private_key" {
  content          = tls_private_key.ssh_key.private_key_pem
  filename         = "${path.module}/private_key.pem"
  file_permission  = "0400"
}