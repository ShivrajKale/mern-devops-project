output "public_ip" {
  description = "Public IP of the EC2 instance"
  value       = aws_eip.app_eip.public_ip
}

output "ssh_command" {
  description = "SSH command to connect"
  value       = "ssh -i ~/.ssh/mern-devops-key.pem ubuntu@${aws_eip.app_eip.public_ip}"
}

output "app_url" {
  description = "Application URL"
  value       = "http://${aws_eip.app_eip.public_ip}"
}