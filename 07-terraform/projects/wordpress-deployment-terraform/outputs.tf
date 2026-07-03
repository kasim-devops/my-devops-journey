output "instance_public_ip" {
    description = "Public IP"
    value = aws_instance.wordpress.public_ip
}

output "wordpress_url" {
    description = "Show Wordpress URL"
    value = "http://${aws_instance.wordpress.public_ip}"
}