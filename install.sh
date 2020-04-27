sudo amazon-linux-extras install docker-compose -y
sudo yum install -y postgresql-server postgresql-devel
sudo service postgresql initdb
echo "VALUE"
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
echo "VERSION"
sudo git pull https://github.com/Disha-Parikh/terraform_jenkins.git -p ${git}
sudo docker login -u dishaparikh98 -p ${docker}
sudo docker-compose up -d
sudo docker-compose ps
