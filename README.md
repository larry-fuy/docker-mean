docker-mean
===========

MEAN tutorial application deployed on docker. The applicatoin is inspired by [Single Page MEAN Application Starter Kit](http://scotch.io/bar-talk/setting-up-a-mean-stack-single-page-application)

Usage
=====
* Download sources
  
  ```
  git clone https://github.com/larry-fuy/docker-mean.git
  ```
* Run `create.sh` or manually 
  
  ```
  cd docker-mean/build
  docker build -t fuy/docker-mean .
  docker run -d -p 127.0.0.1:8080:8080 --rm fuy/docker-mean
  ```
* Check from web browser by `localhost:80` or

  ```
  curl localhost:80
 ```
