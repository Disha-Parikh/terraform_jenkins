sudo amazon-linux-extras install docker git -y
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
sudo docker-compose up -d
sudo docker-compose ps
