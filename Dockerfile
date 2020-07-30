FROM debian:stable-slim

WORKDIR /app/

RUN apt-get update \
 && DEBIAN_FRONTEND=noninteractive \
    apt-get install -y polipo \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*
 
CMD ["polipo", "-c", "/app/polipo.conf"]
