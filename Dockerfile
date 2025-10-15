# Step 1: Use Tomcat base image
FROM tomcat:9.0

# Step 2: Remove default webapps
RUN rm -rf /usr/local/tomcat/webapps/*

# Step 3: Copy WAR file from project root to Tomcat
COPY Durg.war /usr/local/tomcat/webapps/ROOT.war

# Step 4: Expose Tomcat port
EXPOSE 8080
