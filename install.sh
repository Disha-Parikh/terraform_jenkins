sudo amazon-linux-extras install docker  -y
sudo yum install git httpd -y
sudo service docker start
sudo service httpd start
echo "DOCKER"
aws ec2 describe-instances --instance-ids i-0c9c9b44b --query 'Reservations[*].Instances[*].PublicIpAddress' --output text > abcd.txt
cat abcd.txt
echo "?????"
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
sudo netstat -tnlp
echo "END"
