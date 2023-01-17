resource "aws_instance" "dove-inst" {
  ami                    = var.AMIS[var.REGION]
  instance_type          = "t2.micro"
  availability_zone      = var.ZONE1
  key_name               = "new-terradmin"
  vpc_security_group_ids = ["sg-0bb6750ffa20a1c28"]
  tags = {
    Name    = "Terradmin-Intro"
    Project = "Terraform-Intro"
  }
}