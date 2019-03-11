FROM openjdk:8-jdk-alpine

VOLUME /tmp 

ARG JAR_FILECOPY ./${JAR_FILE} app.jar

ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "-XX:+UnlockExperimentalVMOptions", "-XX:+UseCGroupMemoryLimitForHeap", "-jar", "/app.jar"]
