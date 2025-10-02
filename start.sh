#!/bin/sh
# start.sh - Script para arrancar Lavalink en Railway

# URL donde está tu Lavalink.jar (puede ser un release en GitHub u otra URL directa)
LAVALINK_URL="https://github.com/FrierenAPP/mi-lavalink/releases/download/latest/Lavalink.jar"

# Nombre local del jar
LAVALINK_JAR="Lavalink.jar"

# Descargar el jar si no existe
if [ ! -f "$LAVALINK_JAR" ]; then
    echo "Descargando Lavalink.jar..."
    curl -L -o "$LAVALINK_JAR" "$LAVALINK_URL"
else
    echo "Lavalink.jar ya existe, usando local"
fi

# Ejecutar Lavalink con tu application.yml
java -jar "$LAVALINK_JAR"
