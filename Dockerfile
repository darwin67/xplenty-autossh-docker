FROM ubuntu:20.04

RUN apt-get update -q \
    && apt-get install autossh -yqq

RUN mkdir /root/.ssh \
    && ssh-keyscan -p 50683 virginia-tunnel.xplenty.com > /root/.ssh/known_hosts

COPY run /usr/local/bin/run
RUN chmod +x /usr/local/bin/run

CMD ["/usr/local/bin/run"]
