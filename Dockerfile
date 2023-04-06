FROM openjdk:17
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} algalog-api.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","/algalog-api.jar"]
ENV DB_USER=root \
    DB_PASSWORD=password
