sudo amazon-linux-extras install docker -y
sudo yum install -y postgresql-server postgresql-devel
sudo service postgresql initdb
echo "OHH"
sudo cat /var/lib/pgsql/data/postgresql.conf
sudo sed -i "s/#listen_addresses = 'localhost'/listen_addresses='localhost'/1" /var/lib/pgsql/data/postgresql.conf
sudo sed -i "s/#port = 5432/port=5432/1" /var/lib/pgsql/data/postgresql.conf
sudo service postgresql restart
echo "SDFASFDAF"
sudo cat /var/lib/pgsql/data/postgresql.conf
sudo systemctl enable postgresql
sudo service docker start
sudo service postgresql status
sudo netstat -tnlp | grep postgre
echo "HELLO"
sudo usermod -a -G docker ec2-user
echo "VERSION"
sudo docker --version
sudo docker login -u dishaparikh98 -p ${docker}
sudo docker pull dishaparikh98/finalflask:2c25611
sudo docker images ps
sudo docker run dishaparikh98/finalflask:2c25611  --name container1 -d
sudo docker logs container1
sudo docker container ps -a