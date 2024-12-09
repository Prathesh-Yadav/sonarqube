FROM openjdk:11-jdk-slim
WORKDIR /app
COPY target/SimpleWebApplication-9.1.14.war /app/SimpleWebApplication-9.1.14.war
EXPOSE 8080
CMD ["java", "-jar", "SimpleWebApplication-9.1.14.war"]
