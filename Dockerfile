FROM tomcat:9.0-jdk17

# Remove default ROOT app if exists
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy WAR to tomcat webapps
COPY ROOT.war /usr/local/tomcat/webapps/ROOT.war

# Copy startup script
COPY start.sh /usr/local/tomcat/

RUN chmod +x /usr/local/tomcat/start.sh

CMD ["/usr/local/tomcat/start.sh"]

