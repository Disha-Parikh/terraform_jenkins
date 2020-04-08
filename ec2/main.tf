resource "aws_key_pair" "key_pair" {
  key_name = var.key_name
  public_key = file(var.public_key_path)

}

resource "aws_instance" "public_instance" {
  ami = var.ami
  instance_type = var.instance_type
  availability_zone = var.public_az
  subnet_id = var.public_subnet
  security_groups = [var.sg]
  key_name = aws_key_pair.key_pair.key_name
  provisioner "file" {
    source = "install.sh"
    destination = "/tmp/install.sh"
  }
  provisioner "remote-exec" {

    connection {
      user = "ec2-user"
      private_key = var.private_key
    }


    inline = ["chmod +x /tmp/install.sh",
            "./tmp/install.sh"]
  }
  tags={
    Name = "Public Instance"
  }
}


