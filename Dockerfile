FROM openjdk:8-jdk
RUN apt-get update
RUN apt-get install -y maven
RUN mkdir /server
WORKDIR /server

#replace 'demo/' in the following line with path/to/your/spring-boot0project/
COPY demo/ /server/

RUN mvn package
