FROM tomcat:latest
MAINTAINER RAKESHIRUKULA
COPY ./*.war /usr/local/tomcat/webapps/ROOT.war
