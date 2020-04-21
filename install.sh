sudo amazon-linux-extras install docker postgresql10 vim epel -y
sudo yum install -y postgresql-server postgresql-devel
sudo service postgresql initdb
sudo systemctl enable postgresql
sudo systemctl start postgresql
sudo service docker start
sudo service postgresql status
echo "HELLO"
sudo cat /var/lib/pgsql/data/postgresql.conf

sudo usermod -a -G docker ec2-user
echo "VERSION"
sudo docker --version
sudo docker login -u dishaparikh98 -p ${docker}
sudo docker pull dishaparikh98/finalflask:2c25611
sudo docker images
sudo docker run dishaparikh98/finalflask:2c25611 -d