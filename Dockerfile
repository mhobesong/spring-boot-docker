FROM openjdk:8-jdk
RUN apt-get update
RUN apt-get install -y maven
RUN mkdir /server
WORKDIR /server
COPY demo/ /server/
RUN mvn package
