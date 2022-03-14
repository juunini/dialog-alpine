# Dialog Docker

## What is Dialog?

[Dialog](https://github.com/mozilla/dialog) is [Mozilla Hubs](https://hubs.mozilla.com/) media server

## How to get?

```sh
docker pull juunini/dialog:0.0.1
```

## How to run?

```sh
docker run -dit --rm --name dialog -p 9090:9090 juunini/dialog:0.0.1
```

## How to build?

```sh
docker build - < Dockerfile -t juunini/dialog:<tag>
```

## My deploy command

```sh
docker buildx build --platform linux/arm64,linux/amd64,linux/amd64/v2,linux/386,linux/arm/v7 - < Dockerfile -t juunini/dialog:0.0.1 --push
```
