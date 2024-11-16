# Gunakan base image OpenJDK 17
FROM openjdk:17-jdk-slim

# Set working directory di dalam container
WORKDIR /app

# Salin file JAR ke dalam container
COPY build/libs/productApi-0.0.1-SNAPSHOT.jar product-api.jar

# Eksekusi aplikasi
ENTRYPOINT ["java", "-jar", "-Dserver.port=$PORT", "product-api.jar"]
