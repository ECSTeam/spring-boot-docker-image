FROM openjdk:8-jdk-alpine

ADD assets/ /root

RUN unzip /root/package.zip
RUN /root/mvnw dependency:go-offline
