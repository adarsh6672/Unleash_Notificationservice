FROM openjdk:17-jdk-alpine
ARG JAR_FILE=target/*.jar
COPY ./target/notification-service.jar notification-service.jar



ENTRYPOINT ["java","-jar","/notification-service.jar"]