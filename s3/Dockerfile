# http://docs.docker.com/reference/builder
# docker backup via s3 image (boombatower/docker-backup-s3).

FROM geirgp/rpi-docker-backup
MAINTAINER Geir Gullestad Pettersen <geirgp@gmail.com>

RUN apt-get update && \
    apt-get install -y python-boto python-dateutil python-magic
# python-xml

ADD https://github.com/s3tools/s3cmd/archive/v1.5.0.tar.gz /root/
RUN cd /root && tar -zxvf v1.5.0.tar.gz && cd s3cmd-1.5.0 && python setup.py install

ADD s3.sh /root/bin/

ENTRYPOINT ["/root/bin/s3.sh"]
CMD ["backup"]
