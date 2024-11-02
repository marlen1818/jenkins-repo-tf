resource "aws_instance" "web" {
  # provider = aws.ohio
  ami                    = "ami-0866a3c8686eaeeba"
  instance_type          = var.instance_type
  vpc_security_group_ids = [var.jenkins-sg]
  user_data              = file("user_data.sh")

  lifecycle {
    create_before_destroy = true
  }
  tags = {
    Name = "jenkins" 
  }

}