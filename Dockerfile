FROM tomcat:9-jdk17

# Remove default webapps
RUN rm -rf /usr/local/tomcat/webapps/*

# Deploy your application
COPY StudentApp.war /usr/local/tomcat/webapps/ROOT.war

# Start Tomcat
COPY start.sh /start.sh
RUN chmod +x /start.sh

CMD ["/start.sh"]
