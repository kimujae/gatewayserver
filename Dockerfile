FROM openjdk:17-jdk-slim
ADD /build/libs/*.jar discoveryserver.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/discoveryserver.jar"]