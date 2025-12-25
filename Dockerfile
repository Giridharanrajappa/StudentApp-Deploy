FROM tomcat:9.0

# Remove default ROOT app
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your WAR file
COPY StudentApp.war /usr/local/tomcat/webapps/ROOT.war

# Expose Render port dynamically
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
