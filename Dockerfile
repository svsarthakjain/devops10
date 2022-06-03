FROM openjdk:11
COPY . /src/java
WORKDIR /src/java
RUN ["javac","Helloworld.java"]
ENTRYPOINT ["java","Helloworld"]
