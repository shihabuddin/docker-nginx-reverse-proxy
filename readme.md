# Docker Nginx Reverse Proxy

## Getting Started

```bash
$ git clone https://github.com/shihabuddin/docker-nginx-reverse-proxy.git
$ cd docker-nginx-reverse-proxy
$ echo "PORT=9090" >.env
$ echo "PROXY_HOST=http://storage.googleapis.com" >>.env
$ docker-compose up --build -d
$ curl -v http://localhost:9090/some/path/some-file.zip # http://storage.googleapis.com/some/path/some-file.zip
```

## Environment Variables

### PORT

The host port to be used to map the nginx container port. The default value is `80`.

### PROXY_HOST

The remote host to proxy. The default value is `http://storage.googleapis.com`.

## Cache

All the files doewnload through the proxy will be cached in the `.cache` directory for one year.

## Use as Puppeteer Download Proxy

Set the environment variable `PUPPETEER_DOWNLOAD_HOST` to `http://localhost:9090`. Then, when doing `npm install puppeteer`, puppeteer will be download using the proxy.
