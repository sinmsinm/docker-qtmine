from ubuntu:14.04

MAINTAINER Alexandre Ballesté  <alex.balleste@gmail.com>

WORKDIR /tmp

RUN apt-get clean && apt-get update && apt-get -y install curl

RUN curl http://ethpool.org/downloads/qtminer2.tgz -o /tmp/qtminer.tgz | \
    mkdir -p /opt/qtminer && \
    ls -la && \
    tar xfz qtminer.tgz -C /opt/qtminer && \
    chmod +x /opt/qtminer/qtminer.sh

COPY ./entrypoint.sh /opt/qtminer

RUN chmod +x /opt/qtminer/entrypoint.sh

ENTRYPOINT ["/opt/qtminer/entrypoint.sh"]
