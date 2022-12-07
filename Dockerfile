FROM openjdk:18
EXPOSE 8080
ARG JAR_FILE=build/libs/*.jar
COPY ${JAR_FILE} ci-app/
ENTRYPOINT ["java","-jar","ci-app/ciapp-0.0.1-SNAPSHOT.jar"]