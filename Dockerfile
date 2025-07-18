FROM openjdk:8
EXPOSE 8080
ADD target/movie-booking-docker.jar movie-booking-docker.jar
ENTRYPOINT ["java","-jar","/movie-booking-docker.jar"]