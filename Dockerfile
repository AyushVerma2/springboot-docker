FROM oracle/graalvm-ce:1.0.0-rc16
#RUN addgroup -S spring && adduser -S spring -G spring
#USER spring:spring
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} spring-docker.jar
ENTRYPOINT ["java","-jar","/spring-docker.jar"]