# Docker Build Stage
#FROM maven:3-jdk-8-alpine AS build


# Build Stage
#WORKDIR /opt/app

#COPY ./ /opt/app
#RUN mvn clean install -DskipTests


# Docker Build Stage
#FROM openjdk:8-jdk-alpine

#COPY --from=build /opt/app/target/*.war app.war

#ENV PORT 8081
#EXPOSE $PORT

#ENTRYPOINT ["java","-jar","-Xmx1024M","-Dserver.port=${PORT}","app.jar"]

FROM tomcat:9
ADD addressbook.war /usr/local/tomcat/webapps
CMD ["catalina.sh", "run"]
EXPOSE 8080

