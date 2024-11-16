# Menggunakan base image OpenJDK 17
FROM openjdk:17-jdk-slim

# Direktori kerja di dalam container
WORKDIR /app

# Volume untuk caching (opsional, jika aplikasi menghasilkan file sementara)
VOLUME /tmp

# Copy semua file .jar dari folder target ke dalam container dan beri nama app.jar
COPY target/*.jar app.jar

# Perintah untuk menjalankan aplikasi Spring Boot
ENTRYPOINT ["java", "-jar", "/app.jar"]
