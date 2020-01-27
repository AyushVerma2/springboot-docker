# com.springboot.docker
### Springboot Docker example

1. created a simple springboot application user start.spring.io
2.defautl restcontrolelr to test
3.Dcokerfile
  - from : it will downlaod images from dockerhub
  -ADD add the jara from targer to the image
  -ENTRYPoint : it is how to run that jar hre it will be " java -jar spring-docker.jar"
  #### These two are optinal just to know how to add an user 
       #RUN addgroup -S spring && adduser -S spring -G spring
       #USER spring:spring
  #### To build:
  docker build -f Dockerfile -t spring-docker . 
  // -f is the file name , -t is tag , spring-docket is the image name and . is cuurnet directory where the file is
  #### To Run:
  docker run -p 8080:8080 spring-docker
  
  // you can also push the image to you docker repo using you credential
