FROM openjdk:8-jdk-alpine

ADD assets/package.zip /root/package.zip

RUN unzip /root/package.zip
RUN echo "Collecting all dependencies. Hiding output to prevent Concourse from crashing"
RUN ./mvnw -DnewVersion=0.0.2 versions:set > mvn-output.txt
RUN ./mvnw clean test package install >> mvn-output.txt
