FROM tomcat:latest
MAINTAINER RAKESH-IRUKULA
COPY ./*.war /usr/local/tomcat/webapps/ROOT.war
