# polipo-docker
## docker-compose
```
version: '3'
services:
  polipo:
    container_name: polipo
    image: polipo
    restart: unless-stopped
    network_mode: host
    volumes:
      - ./polipo.conf:/app/polipo.conf
```

## polipo.conf
```
proxyAddress = "0.0.0.0"
proxyPort = listen_port
socksParentProxy = "upstream_ip:upstream_port"
socksProxyType = socks5
allowedClients = 127.0.0.1/8, 192.168.0.0/16, 10.0.0.0/8
```
