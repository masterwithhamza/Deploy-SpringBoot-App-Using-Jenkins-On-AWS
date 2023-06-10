FROM quay.io/eclipse/che-java8-maven:next

MAINTAINER tech-tejendra

USER root

COPY src /home/app/src
COPY pom.xml /home/app

RUN mkdir -p /var/local/SP
EXPOSE 5000
CMD mvn -f /home/app/pom.xml clean package

