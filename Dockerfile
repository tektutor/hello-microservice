FROM registry.access.redhat.com/ubi8/openjdk-11
COPY . .
RUN mvn clean package
CMD [ "java", "-jar", "./target/hello-1.0.0.jar" ]
