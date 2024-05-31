FROM openjdk:8-jdk-alpine
EXPOSE 8089
ADD target/achat-1.0.jar achat-1.0.jar
RUN curl -u admin:admin -o achat-1.0.jar
"https://172.29.18.54:8081//repository/achat/tn/achat/rh/achat/1.0/achat-1.0.jar" -L
ENTRYPOINT ["java","-jar","/achat-1.0.jar"]
