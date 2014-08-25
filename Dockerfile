FROM cedricziel/docker-scala
MAINTAINER jainish shah "jainishshah@yahoo.com"

RUN apt-get -y install wget unzip && apt-get clean

RUN wget http://downloads.typesafe.com/play/2.2.3/play-2.2.3.zip -O /opt/play.zip

RUN unzip /opt/play.zip -d /opt

RUN mv /opt/play-2.2.3 /opt/play

RUN cd /samples/java/websocket-chat

RUN rm /opt/play.zip

ENV PATH /opt/play:$PATH

RUN cd /play-2.2.3/samples/java/websocket-chat

RUN play start
