sudo amazon-linux-extras install docker  -y
sudo yum install git -y
sudo service docker start
echo "DOCKER"
echo "????"
sudo service docker status
sudo curl -L https://github.com/docker/compose/releases/download/1.21.0/docker-compose-`uname -s`-`uname -m` | sudo tee /usr/local/bin/docker-compose > /dev/null
echo "!!!!!!"
sudo chmod +x /usr/local/bin/docker-compose
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
echo "DOCKER-COMPOSE"
sudo git clone https://github.com/Disha-Parikh/JenkinsTest.git
cd JenkinsTest
pwd
sudo docker-compose up -d
echo "SERVICES"
sudo docker-compose ps --services
echo "LOGS WEB"
sudo docker-compose logs web
echo "LOGS DB"
sudo docker-compose logs postgres
sudo netstat -tnlp
echo "NETWORKS"
sudo docker network ls
echo "END"
curl http://postgres:5432

