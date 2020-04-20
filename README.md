# com.springboot.docker
### Springboot Docker example

1. created a simple springboot application https://start.spring.io/ or normal maven project.
2. Defautl REST controllr to test ,if it is deployed succesfully.
3. crete a Dcokerfile with below.
 ```bash
  - from : it will downlaod images from dockerhub
  -ADD add the jara from targer to the image
  -ENTRYPoint : it is how to run that jar hre it will be " java -jar spring-docker.jar"
  ```
  #### These two are optinal just to know how to add an user 
       #RUN addgroup -S spring && adduser -S spring -G spring
       #USER spring:spring
  #### To build the docker
  
  
  ##### To build image:
  * docker build -f Dockerfile -t spring-docker . 
   // -f is the file name , -t is tag , spring-docket is the image name and . is cuurnet directory where the file is
  #####   To Run:
  * docker run -p 8080:8080 spring-docker
  
  * if you want same microserve to run on multiple ports:
  * add different porst in applicaiton.properties=server.port=9001, and do mavn install.
  * create different images docker build -f Dockerfile -t spring-test/1/2/3 . 
  * docker run -p 9001:9001 spring-test1
  
   ```
  
  // you can also push the image to you docker repo using you credential
  
  ### GRAALVM:(use grmach graalVM to see the sample
  ```
  - polygot VM
  - Interoperability for different prog language
  - Universal VM , using which you can run java/python/C/C++./Runy/R
  - Also all JVM lang Scala,java,Cluje,kotlin
  - Polygot app: wirte app in dif alng and they will run on same VM.
  - Compile code in native img, and that will run on respective.
  - build once and run in on any platoform..
  - native img concept and it will run on respective machine..
  -docker run -it oracle/graalvm-ce:1.0.0-rc16 bash > it will installl graalvm and open bash shell, where you can cheeck java version, mnode version, lli for cand c++
  ```
