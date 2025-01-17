FROM eclipse-temurin:17-jdk-alpine

EXPOSE 8080

ENV APP_HOME /app/src/app 

COPY target/*.jar $SAP_HOME/app.jar 

WORKDIR $APP_HOME 

CMD ["java", "-jar", "app.jar"]