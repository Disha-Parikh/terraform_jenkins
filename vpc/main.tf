resource "aws_vpc" "custom_vpc" {
  cidr_block = var.vpc_cidr
}
resource "aws_security_group" "custom_sg" {
  vpc_id = "${aws_vpc.custom_vpc.id}"
  name = "my security group"
  egress {
    from_port = 0
    protocol = "-1"
    to_port = 0
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port = 80
    protocol = "tcp"
    to_port = 80
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port = 22
    protocol = "tcp"
    to_port = 22
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port = 5002
    protocol = "tcp"
    to_port = 5002
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port = 5000
    protocol = "tcp"
    to_port = 5000
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port = 5432
    protocol = "tcp"
    to_port = 5432
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags={
    name = "ssh-http"
  }
}

/*resource "aws_subnet" "private_subnet" {
  cidr_block = var.private_cidr
  vpc_id = "${aws_vpc.custom_vpc.id}"
  map_public_ip_on_launch = false
  availability_zone = var.private_az
  tags={
    Name = "Private Subnet"
  }
}*/

resource "aws_subnet" "public_subnet" {
  cidr_block = var.public_cidr
  vpc_id = "${aws_vpc.custom_vpc.id}"
  map_public_ip_on_launch = true
  availability_zone = var.public_az
  tags={
    Name = "Public Subnet"
  }
}

resource "aws_internet_gateway" "my_internet_gateway" {
vpc_id = "${aws_vpc.custom_vpc.id}"
}

resource "aws_route_table" "public_route_table" {
  vpc_id = "${aws_vpc.custom_vpc.id}"
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id =aws_internet_gateway.my_internet_gateway.id
  }
}

//resource "aws_route_table" "private_route_table" {
//  vpc_id = "${aws_vpc.custom_vpc.id}"
//  route {
//    cidr_block = "10.0.0.0/16"
//  }
//}
resource "aws_route_table_association" "public_association" {
  route_table_id = aws_route_table.public_route_table.id
  subnet_id = aws_subnet.public_subnet.id
}
