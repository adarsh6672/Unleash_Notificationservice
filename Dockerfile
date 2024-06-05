FROM openjdk:17-jdk-alpine
ARG JAR_FILE=target/*.jar
COPY ./target/notification-service.jar notification-service.jar

ENV KAFKA_BOOTSTRAP_SERVERS=kafka
ENV KAFKA_BOOTSTRAP_PORT=9092

ENTRYPOINT ["java","-jar","/notification-service.jar"]