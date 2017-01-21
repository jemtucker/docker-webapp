# Docker Webapp
Demostrating how to dockerize a django webapp.

## Building
Install docker
```
curl -sSL https://get.docker.com/ | sh
```

Build docker image and run as daemon 
```
make build
```

## Running

Spin up a new docker container containing the helloworld application
```
make run
curl http://localhost/
```
