FROM openjdk:8-jdk-alpine
MAINTAINER Chittaranjan Panda <chittaranjan@hotmail.com>
EXPOSE 8080
# ADD target/*.jar app.jar
#ENTRYPOINT ["sh","-c","java -jar /app.jar"]
ARG DEPENDENCY=target/dependency
COPY ${DEPENDENCY}/BOOT-INF/lib /app/lib
COPY ${DEPENDENCY}/META-INF /app/META-INF
COPY ${DEPENDENCY}/BOOT-INF/classes /app
ENTRYPOINT ["java","-cp","app:app/lib/*","demo.practice.springbootmvc.SpringBootMvcApplication"]