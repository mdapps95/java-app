# FROM openjdk:11
# COPY target/JavaCoffeeShop!!!.jar .
# CMD ["java", "-jar", "JavaCoffeeShop!!!.jar"]
FROM ubuntu:22.04
RUN sudo apt update
RUN sudo apt install openjdk-11-jdk -y
RUN sudo apt-get install stress -y
RUN sudo apt-get install stress-ng -y
COPY target/JavaCoffeeShop!!!.jar .
CMD ["java", "-jar", "JavaCoffeeShop!!!.jar"]

