FROM ubuntu:latest

RUN apt update && apt install -y default-jdk maven vim git net-tools iputils-ping tree curl 

COPY . .
RUN mvn clean package

CMD [ "java", "-jar", "./target/hello-1.0.0.jar" ]
