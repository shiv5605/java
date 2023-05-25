FROM tomcat:9.0-jdk11-openjdk-slim

RUN rm -rf /usr/local/tomcat/webapps/*

COPY WebContent/index.jsp /usr/local/tomcat/webapps/ROOT/index.jsp
COPY src /usr/local/tomcat/webapps/ROOT/WEB-INF/classes

EXPOSE 8080
