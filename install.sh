sudo yum update -y
sudo amazon-linux-extras install docker -y
sudo service docker start
sudo usermod -a -G docker ec2-user
echo "VERSION"
sudo docker --version
sudo docker pull finalflask
sudo docker images