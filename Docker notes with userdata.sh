## spin up an AmzLinux2 instance
#!/bin/bash
sudo su
sudo yum update -y
sudo yum install docker -y
systemctl start docker
systemctl enable docker
docker run -dt -p 80:80 nginx  ##-dt means detached mode. this is because it pulls a new image from the library. 
##==> -p is called port binding. this mechanizm is called mapping
##==> 80:80 means one port is the container port, and the other port is ec2 instance port
##===> The port on the left hand side is the access port on the ec2 instance
##====> Any other application would have to be installed on a different port


# Docker ps  ===> shows running container
# Docker ps -a  ===> List all containers, current and existed
# Docker images ====> shows images
# Docker --version #: shows currently installed version
# docker run -dt -p 80:80 nginx
# docker run -dt nginx =====> this will create an nginx container in a detached mode
# docker run nginx  ========> this will not create any more containers once an nginx containter is alrea running
# docker rm "container_id" ====> remove containers
# docker rmi "image_name" ======> remove image
# docker run ======> pull images from docker hub and creates containers
# docker pull ======> only pulls containers
# docker kill ======> stop container

# FROM.==========>
# LABEL.=========>
# ENV.===========>
# RUN.===========>
# COPY.==========>
# ADD.===========>
# ENTRYPOINT.====>
# EXPOSE.========>
# CMD. ==========>

# dockerfile
#      (build)
# dockerimage ----> Dockerhub/AWS ECR
#      (create)
# dockercontainers

## Dockerfile
###### Writing a Dockerfile

#########################################################################################

# FROM ubuntu
# RUN apt-get update -y
# RUN apt-get install nginx -y
# COPY index.html /var/www/html
# CMD nginx -g 'daemon off;'

#########################################################################################

# after creating the file, safe and exit then run the following commands to build your image and the container
# docker build .
# docker run -dt -p 80:80 b99ce4845308 ===> because the image has no tags, use the image id instead

#########################################################################################
# docker container kill $(docker container ls -aq) ====> kill all containers
# docker container rm $(docker container ls -aq)   ====> removes all killed containers

# docker image pull nginx =========> pulls nginx image from docker hub

#########################################################################################

## ****GETTING INSIDE A CONTAINER****
# docker exec -it containerID bash
# docker exec -it containerID sh

