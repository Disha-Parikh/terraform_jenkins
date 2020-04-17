sudo amazon-linux-extras install docker -y
sudo amazon-linux-extras install postgresql10 vim epel -y
sudo yum install -y postgresql-server postgresql-devel
sudo systemctl enable postgresql
sudo systemctl start postgresql
su - postgres
sudo service docker start
sudo service postgresql status > abcd.txt
cat abcd.txt
sudo usermod -a -G docker ec2-user
echo "VERSION"
sudo docker --version
sudo docker login -u dishaparikh98 -p ${docker}
sudo docker pull dishaparikh98/finalflask:2c25611
sudo docker images
sudo docker run dishaparikh98/finalflask:2c25611 -d