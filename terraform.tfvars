region = "ap-south-1"
ami = "ami-54d2a63b"
instance_type = "t2.micro"
vpc_cidr = "10.0.0.0/16"

private_az = "ap-south-1a"
public_az = "ap-south-1b"

public_cidr = "10.0.1.0/24"
private_cidr = "10.0.2.0/24"

key_name = "aws_key"
path = "./aws_key.pub"