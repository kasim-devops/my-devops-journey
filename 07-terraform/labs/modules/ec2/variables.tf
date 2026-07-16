variable "instance_type" {
  type        = string
  description = "EC2 instance type for the web server"
  default = "t2.micro"
}


locals {
  instance_ami = "ami-07f936ee1f9a0de0e"
}

output "instance_id" {
  value       = aws_instance.this.id
  description = "The ID of the EC2 instance"
}

