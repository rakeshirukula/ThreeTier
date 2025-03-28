FROM tomcat:latest
MAINTAINER RAKESHIRUKULA
COPY target/*.war /usr/local/tomcat/webapps/ROOT.war
