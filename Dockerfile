FROM tomcat:9.0

# Remove default ROOT and other apps
RUN rm -rf /usr/local/tomcat/webapps/*

# Deploy your WAR as ROOT.war
COPY StudentApp.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080
CMD ["catalina.sh", "run"]
