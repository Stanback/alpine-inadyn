# Inadyn + Alpine Linux Docker Image

This repository contains a Dockerfile for building a
lighweight Docker image with the [inadyn](http://troglobit.com/inadyn.html)
dynamic DNS client.

# Running

Edit the inadyn.conf to match your configuration and run the
following (the scripts and cache directories are optional):

```
docker run \
   -d \
   -v $PWD/inadyn.conf:/etc/inadyn.conf \
   -v $PWD/scripts:/usr/share/inadyn \
   -v $PWD/cache:/var/cache/inadyn \
   --name=inadyn \
   --restart=always \
   stanback/alpine-inadyn
```
