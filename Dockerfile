FROM openjdk:17.0.2


VOLUME /vol

ARG JAR_FILE=build/libs/*.jar
COPY ${JAR_FILE} app.jar

ENTRYPOINT ["java", \
    "-Dspring.r2dbc.url=${R2DBC_HOST}", \
    "-jar", \
    "/app.jar"]