# spring-boot-docker
Docker setup for spring boot project

### Setup

1. Replace the demo project folder with your own project

2. Edit line `8` of the `Dockerfile` to match your project path

```bash
FROM openjdk:8-jdk
RUN apt-get update
RUN apt-get install -y maven
RUN mkdir /server
WORKDIR /server

#replace 'demo/' in the following line with path/to/your/spring-boot0project/
COPY demo/ /server/
...
```

3. Configure the right MySQL database connection credentials in the `docker-compose.yml` file

```bash
version: '3.1'

services:

  db:
    image: mysql
    command: --default-authentication-plugin=mysql_native_password
    restart: always
    environment:
      MYSQL_ROOT_PASSWORD: demo
      MYSQL_PASSWORD: demo
      MYSQL_DATABASE: demo
    container_name: mysql_server
    volumes:
...
```

Your MySQL database files will be held in the `mysql/data` folder

### Build docker

`docker-compose build`

### Run docker

`docker-compose up`

If you want to run in detach mode

`docker-compose up -d`

### stop docker

` docker-compose down`
