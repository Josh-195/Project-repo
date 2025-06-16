output "instance_public_ip" {
  value = aws_instance.main.public_ip
}

output "ssh_command" {
  value = "ssh -i private_key.pem ec2-user@${aws_instance.main.public_ip}"
}