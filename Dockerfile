# Usa Java 17
FROM openjdk:17-jdk-slim

# Crea carpeta de la app
WORKDIR /app

# Copia los archivos
COPY Lavalink.jar .
COPY application.yml .

# Expone el puerto que usará Lavalink
EXPOSE 2333

# Comando para arrancar Lavalink
CMD ["java", "-jar", "Lavalink.jar"]
