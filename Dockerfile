# Start with a base image containing Java runtime
# FROM openjdk:8-jdk-alpine
FROM openjdk:latest

# Add Maintainer Info
MAINTAINER Vinayak Mahadik <mahadikvinayak75@gmail.com>

# Add a volume pointing to /tmp
VOLUME /tmp

# Make port 8992 available to the world outside this container
EXPOSE 8992

# The application's jar file
ARG JAR_FILE=target/MentorOnDemand-0.0.1-SNAPSHOT.jar

# Add the application's jar to the container
ADD ${JAR_FILE} MentorOnDemand.jar

# Run the jar file 
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/MentorOnDemand.jar"]