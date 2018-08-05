dockerfile-parsoid
==================

This is a simple alpine container that runs a parsoid instance.

## Example of docker build

```
docker build -t parsoid https://github.com:/manoj23/dockerfile-parsoid.git
```
To build a specific git revision (e.g.: tags/v0.7.1) of parsoid:
```
docker build -t parsoid --build-arg GIT_REVISION=tags/v0.7.1 \
	https://github.com:/manoj23/dockerfile-parsoid.git
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

To build a specific git revision (e.g.: tags/v0.7.1) of parsoid:
```
version: '3'
services:
  parsoid:
    build:
      context: https://github.com:/manoj23/dockerfile-parsoid.git
      args:
        GIT_REVISION: tags/v0.7.1
    volumes:
      - /path/to/config.yaml:/config.yaml
```
