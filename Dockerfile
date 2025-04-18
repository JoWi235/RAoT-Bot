FROM ubuntu:22.04

RUN apt-get update && apt-get install -y \
    xdotool xvfb x11vnc wget \
    && rm -rf /var/lib/apt/lists/*

# Arbeitsverzeichnis und Skripte kopieren
WORKDIR /app
COPY *.sh /app/
COPY raotFolder.tar.gz /tmp/raotFolder.tar.gz

# Archiv entpacken und Berechtigungen setzen
RUN tar -xzf /tmp/raotFolder.tar.gz -C /app \
    && mv /app/'raot 2.086' /app/raotFolder \
    && rm /tmp/raotFolder.tar.gz \
    && chmod +x /app/*.sh

# Port und Startbefehl
EXPOSE 5900
EXPOSE 15937

CMD ["/app/display-setup.sh"]