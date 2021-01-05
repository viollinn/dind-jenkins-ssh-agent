FROM jenkins/ssh-agent:alpine

RUN apk update &&\    
    apk add curl --no-cache
    
RUN curl -sSL https://get.docker.com/ | sh    
RUN curl -L "https://github.com/docker/compose/releases/download/1.24.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose &&\
    chmod +x /usr/local/bin/docker-compose
