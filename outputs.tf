output "instance_id" {
  description = "EC2 instance ID"
  value       = aws_instance.jessie_test_server.id
}

output "public_ip" {
  description = "Public IP of EC2"
  value       = aws_instance.jessie_test_server.public_ip
}

output "public_dns" {
  description = "Public DNS of EC2"
  value       = aws_instance.jessie_test_server.public_dns
}
