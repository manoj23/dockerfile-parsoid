dockerfile-parsoid
==================

This is a simple alpine container that runs a parsoid instance.

## Example of docker build

```
docker build \
	-t parsoid https://github.com:/manoj23/dockerfile-parsoid.git
```

## Example of docker run


```
docker run --rm -ti -v /path/to/config.yaml:/config.yaml parsoid
```

## Example of docker-compose.yml

Put in a folder:
* docker-compose.yml as below

```
version: '3'
services:
  parsoid:
    build: https://github.com:/manoj23/dockerfile-parsoid.git
    volumes:
      - /path/to/config.yaml:/config.yaml
```
