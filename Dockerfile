
FROM openjdk:11-slim

RUN mkdir /opt/app

WORKDIR /opt/app 

ADD java-helloworld/Simplest-Spring-Boot-Hello-World/target/example.smallest-0.0.1-SNAPSHOT.jar /opt/app/springboot-app-2.jar

EXPOSE 8080

RUN ["chmod", "+x", "/opt/app/springboot-app-2.jar"] 

ENTRYPOINT ["java" , "-jar" , "springboot-app-2.jar"]
