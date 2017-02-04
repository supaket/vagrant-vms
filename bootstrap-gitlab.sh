#!/bin/sh

mkdir -p /srv/gitlab/{config,logs,data}

sudo docker run -d \
    --hostname cd.workshop.com \
    --publish 8443:443 --publish 8080:80 \
    --name gitlab \
    --restart always \
    --volume /srv/gitlab/config:/etc/gitlab \
    --volume /srv/gitlab/logs:/var/log/gitlab \
    --volume /srv/gitlab/data:/var/opt/gitlab \
    gitlab/gitlab-ce:latest
