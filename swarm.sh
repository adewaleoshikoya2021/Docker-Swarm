#!/bin/bash
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
sudo systemctl start docker 
sudo systemctl enable docker 
systemctl status docker 

#manager
docker swarm join --token SWMTKN-1-0mtu5is4x6x7ezw125e829re6m1xjdl825l29ibj7xksdu8raj-617gmyzkshv35vvpeo60mb6dn 137.184.235.86:2377

#worker
docker swarm join --token SWMTKN-1-0mtu5is4x6x7ezw125e829re6m1xjdl825l29ibj7xksdu8raj-d47uqoer1r0nhjp6g1qun5ur5 137.184.235.86:2377

docker info


$ docker run -d -p 80:80 --name jenkins \
    --volume /path/to/tuncaytas/jenkins/
#update 
docker service update --image=jenkins:3.6 jenkins    
#rollback
docker service rollback jenkins
docker service ls

docker service create    \
--constraint=node.role==manager    \
--mode=global \
--publish mode=host,target=8080,published=8080  \
--mount type=bind,src=/var/run/docker.sock,dst=/var/run/docker.sock \
--name=visualizer \
dockersamples/visualizer
