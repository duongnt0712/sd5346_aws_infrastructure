output "jenkins_public_ip" {
  value = aws_instance.jenkins.public_ip
}

output "jenkins_ssh_command" {
  value = "ssh -i ${var.jenkin_key_name}.pem ubuntu@${aws_instance.jenkins.public_ip}"
}

output "jenkins_initial_admin_password_hint" {
  value = "cat /home/ubuntu/jenkins_initial_password.txt"
}