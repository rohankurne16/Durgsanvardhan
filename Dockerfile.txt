# Step 1: Tomcat Base Image
FROM tomcat:9.0

# Step 2: Remove Default Tomcat Webapps
RUN rm -rf /usr/local/tomcat/webapps/*

# Step 3: Copy your WAR file into Tomcat webapps
COPY target/Durg.war /usr/local/tomcat/webapps/ROOT.war

# Step 4: Expose Port 8080
EXPOSE 8080

# Step 5: Start Tomcat
CMD ["catalina.sh", "run"]
