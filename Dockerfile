FROM openjdk:11
COPY target/JavaCoffeeShop!!!.jar /app
WORKDIR /app
CMD ["java", "-jar", "JavaCoffeeShop!!!.jar"]

