# FROM openjdk:11
# COPY target/JavaCoffeeShop!!!.jar .
# CMD ["java", "-jar", "JavaCoffeeShop!!!.jar"]
FROM ubuntu:22.04
RUN apt update
RUN apt install openjdk-11-jdk -y
RUN apt-get install stress -y
RUN apt-get install stress-ng -y
COPY target/JavaCoffeeShop!!!.jar .
CMD ["java", "-jar", "JavaCoffeeShop!!!.jar"]

