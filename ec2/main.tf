resource "aws_instance" "private_instance" {
  ami = var.ami
  instance_type = var.instance_type
  availability_zone = var.private_az
  subnet_id = var.private_subnet
  security_groups = [var.sg]
  tags={
    Name = "Private Instance"
  }
}

resource "aws_instance" "public_instance" {
  ami = var.ami
  instance_type = var.instance_type
  availability_zone = var.public_az
  subnet_id = var.public_subnet
  security_groups = [var.sg]
  tags={
    Name = "Public Instance"
  }
}
