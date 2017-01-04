# Inadyn Docker Image

This repository contains a Dockerfile for building a
lighweight Docker image with the
[inadyn](http://troglobit.com/inadyn.html) dynamic
DNS client.

# Building

The simplest way to build the image is to clone this
repository and run the following:

```
docker build \
   --rm=true \
   --tag=inadyn \
   .
```

# Running

Edit the inadyn.conf to match your configuration and
run the following (the checks and cache directories
are optional):

```
docker run \
   -d \
   -v $PWD/inadyn.conf:/etc/inadyn.conf \
   -v $PWD/scripts:/usr/share/inadyn \
   -v $PWD/cache:/var/cache/inadyn \
   --name inadyn \
   --restart=always \
   inadyn
```

# Pre-built Image

You can download a pre-built image from
[Docker Hub](https://hub.docker.com/r/stanback/inadyn-alpine/):

```
docker pull stanback/inadyn-alpine
```

