FROM tomcat:latest
MAINTAINER RAKESHIRUKULA
ENV RAKESH=DEVOPS
ARG TEJA=CYBER
COPY target/*.war /usr/local/tomcat/webapps/ROOT.war
