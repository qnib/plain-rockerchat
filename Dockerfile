FROM qnib/dplain-node

WORKDIR /opt/rocketchat 
RUN apt-get update \
 && apt-get install -y graphicsmagick build-essential \
 && curl -L https://rocket.chat/releases/latest/download | tar xfz - --strip-components=1

COPY opt/qnib/rocketchat/bin/start.sh /opt/qnib/rocketchat/bin/
CMD ["/opt/qnib/rocketchat/bin/start.sh"]
 
