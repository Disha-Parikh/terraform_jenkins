resource "tls_private_key" "example" {
  algorithm = "RSA"
  rsa_bits = 4096

}

resource "aws_key_pair" "key_pair" {
  key_name = var.key_name
  public_key = "${tls_private_key.example.public_key_openssh}"

}

resource "aws_instance" "public_instance" {
  ami = var.ami
  instance_type = var.instance_type
  availability_zone = var.public_az
  subnet_id = var.public_subnet
  security_groups = [var.sg]
  key_name = "${aws_key_pair.key_pair.key_name}"
  provisioner "file" {
    source = "install.sh"
    destination = "/tmp/install.sh"
    connection {
      user = "ec2-user"
      host = aws_instance.public_instance.public_ip
      private_key = tls_private_key.example.private_key_pem
    }
  }
  provisioner "remote-exec" {
    script = "./install.sh"

    connection {
      user = "ec2-user"
      host = aws_instance.public_instance.public_ip
      private_key = tls_private_key.example.private_key_pem

    }

  }
  tags={
    Name = "Public Instance"
  }
}


