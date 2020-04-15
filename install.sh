sudo yum update -y
sudo amazon-linux-extras install docker -y
sudo service docker start
sudo usermod -a -G docker ec2-user
echo "VERSION"
sudo docker --version
sudo docker login -p ${docker}
sudo docker pull dishaparikh98/finalflask
sudo docker images
sudo docker run dishaparikh98/finalflask -d