curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
sudo systemctl start docker 
sudo systemctl enable docker 
systemctl status docker 

sudo yum install python3  python3-pip   -y
sudo pip3 install --upgrade pip 
pip3 install docker-compose 
docker-compose version 
