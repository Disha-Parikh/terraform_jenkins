sudo amazon-linux-extras install docker  -y
sudo yum install git -y
sudo service docker start
echo "DOCKER"
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
echo "DB"
sudo docker logs jenkinstest_db_1
echo "WEB"
sudo docker logs jenkinstest_web_1
sudo docker-compose ps -a
sudo netstat -tnlp
echo "END"
