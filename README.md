# Migrate Docker data
This image allows you to easily do a (batch) migration of data between locations used by Docker. Especially useful to migrate data to or from Docker volumes. It is designed to be small and simple.

## Usage
The tool will copy all contents from the folders mounted in /source to the folders (with the exact same name) mounted in /destination.
Existing files will not be overwritten.

## With docker run
```sh
docker run -v ${PWD}/host/folder/one:/source/one -v docker-volume-one:/destination/one dbouwers/migrate-docker-data:latest
```

## With docker-compose
```YAML
services:
    data-migrate:
        image: dbouwers/migrate-docker-data:latest
        volumes:
            - ${PWD}/host/folder/one:/source/one
            - docker-volume-one:/destination/one
            - ${PWD}/host/folder/two:/source/2
            - docker-volume-two:/destination/2
```