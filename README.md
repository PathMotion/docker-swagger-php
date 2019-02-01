# Swagger PHP Docker

![Travis badge](https://travis-ci.org/PathMotion/docker-swagger-php.svg?branch=master)

This is a lightweight Docker image to use [zircote/swagger-php](https://github.com/zircote/swagger-php) in containers.

It runs on the official php7-alpine image with no additions (no composer in the final image)


## Usage


```
docker run -v "$PWD":/app -it pathmotion/swagger-php src/
```

```
docker run -v "$PWD":/app -it pathmotion/swagger-php src/ --output doc.yaml --format yaml --debug
```