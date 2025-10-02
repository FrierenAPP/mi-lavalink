FROM ghcr.io/lavalink-devs/lavalink:4-alpine

COPY application.yml /opt/Lavalink/application.yml

EXPOSE ${PORT}

CMD ["java", "-jar", "Lavalink.jar"]
