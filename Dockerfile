# http://docs.docker.com/reference/builder
# docker backup image (boombatower/docker-backup).

FROM hypriot/rpi-python
MAINTAINER Geir Gullestad Pettersen <geirgp@gmail.com>

RUN apt-get update && apt-get -y install tar xz-utils libpcre3

ADD backup.sh /root/bin/

VOLUME /backup
ENTRYPOINT ["/root/bin/backup.sh"]
CMD ["backup"]
