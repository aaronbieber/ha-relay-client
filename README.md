# HA Relay Client

This is a very simple home automation relay client written in Go. This can be 
built and run like any Go package, or built as a container using the provided 
Dockerfile.

## Configuration

The `config` directory contains an example configuration file in the INI 
format. This file can and should be renamed, and is provided to the client 
with the `-configpath` flag, or should be mounted as `/config/config.gcfg` 
within the Docker container.

## Running in Docker

The container isn't published (yet) so build it first:

```
docker build -t image_name .
```

Then run that sucker as:

```
docker run \
  -v `pwd`/config:/config
  image_name
```

Obviously use whatever image name you want.
