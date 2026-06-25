resource "aws_instance" "this" {
  ami                     = "ami-07f936ee1f9a0de0e"
  instance_type           = "t2.micro"
}
