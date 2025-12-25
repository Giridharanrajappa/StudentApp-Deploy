FROM tomcat:9.0-jdk17-temurin

# Remove default ROOT app
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your WAR → run as ROOT
COPY StudentApp.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080
CMD ["catalina.sh","run"]
