FROM ubuntu
MAINTAINER Yong Fu <larry.yong.fu@hotmail.com>

RUN apt-get update -q

# node
RUN apt-get install -y nodejs
RUN apt-get install -y npm

# MongoDB
RUN sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
RUN echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | sudo tee /etc/apt/sources.list.d/mongodb.list
RUN sudo apt-get update -q
RUN sudo apt-get install -y mongodb-org 
RUN sudo /etc/init.d/mongod start

RUN apt-get install -y git

# code
RUN git clone      https://github.com/larry-fuy/docker-mean.git
WORKDIR /docker-mean

# Express and Mongoose
RUN sudo npm install

RUN sudo ln /usr/bin/nodejs /usr/bin/node

# Bower, Angular
RUN sudo npm install -g bower
RUN sudo bower install

ADD /run.sh /docker-mean/run.sh
RUN chmod +x /docker-mean/*.sh

EXPOSE 8080
CMD ["/docker-mean/run.sh"]
