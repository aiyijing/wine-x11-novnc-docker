FROM ubuntu:20.04

ENV HOME /root

RUN apt-get update && apt-get -y install python2 python-is-python2 xvfb x11vnc firefox xdotool wget tar supervisor net-tools fluxbox gnupg2 && \
    apt-get -y full-upgrade && apt-get clean && rm -rf /var/lib/apt/lists/*
ADD supervisord.conf /etc/supervisor/conf.d/supervisord.conf

ENV DISPLAY :99

WORKDIR /root/
RUN wget -O - https://github.com/novnc/noVNC/archive/v1.1.0.tar.gz | tar -xzv -C /root/ && mv /root/noVNC-1.1.0 /root/novnc && ln -s /root/novnc/vnc_lite.html /root/novnc/index.html && \
    wget -O - https://github.com/novnc/websockify/archive/v0.9.0.tar.gz | tar -xzv -C /root/ && mv /root/websockify-0.9.0 /root/novnc/utils/websockify

COPY startup.sh /startup.sh
RUN chmod a+x /startup.sh
EXPOSE 8080

ENTRYPOINT ["/startup.sh"]
