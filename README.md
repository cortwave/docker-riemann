# docker-riemann
Dockerized [riemann](https://riemann.io) monitoring server

[![Build Status](https://travis-ci.org/cortwave/docker-riemann.svg?branch=master)](https://travis-ci.org/cortwave/docker-riemann)
[![Docker Pulls](https://img.shields.io/docker/pulls/cortwave/riemann.svg)](https://hub.docker.com/r/cortwave/riemann)
[![Docker Stars](https://img.shields.io/docker/stars/cortwave/riemann.svg)](https://hub.docker.com/r/cortwave/riemann)

## Run instructions

```bash
docker run -d -p 5555:5555 -p 5555:5555/tcp -p 5556:5556 cortwave/riemann:0.2.12
```

### Custom riemann.config

You can mount your custom `riemann.config` to container

```bash
docker run -d -p 5555:5555 -p 5555:5555/tcp -p 5556:5556 \
-v ./riemann.config:/etc/riemann/riemann.config:ro cortwave/riemann:0.2.12
```
