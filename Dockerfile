FROM openjdk:11-jdk-slim
WORKDIR /app
# Copy the .war file from the Maven repository path to the Docker container
COPY /home/jslave/.m2/repository/com/maven/SimpleWebApplication/9.1.14/SimpleWebApplication-9.1.14.war /app/SimpleWebApplication-9.1.14.war
EXPOSE 8080
CMD ["java", "-jar", "SimpleWebApplication-9.1.14.war"]
