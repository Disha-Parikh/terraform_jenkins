sudo amazon-linux-extras install docker -y
sudo yum install -y postgresql
sudo -u postgres psql
su postgres -c "createdb db1 --owner postgres"
sudo service postgresql reload
sudo service docker start
sudo usermod -a -G docker ec2-user
echo "VERSION"
sudo docker --version
sudo docker login -u dishaparikh98 -p ${docker}
sudo docker pull dishaparikh98/finalflask:2c25611
sudo docker images
sudo docker run dishaparikh98/finalflask:2c25611 -d