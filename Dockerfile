FROM openjdk:8-jdk-alpine

ADD assets/package.zip /root/package.zip

RUN unzip /root/package.zip
RUN ./mvnw dependency:go-offline
