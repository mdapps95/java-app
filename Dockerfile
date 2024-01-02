FROM openjdk:11
COPY target/JavaCoffeeShop!!!.jar .
CMD ["java", "-jar", "JavaCoffeeShop!!!.jar"]

