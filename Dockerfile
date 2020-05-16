FROM ubuntu:16.04.6

RUN apt-get update && \
	apt-get -y install apt-mirror
RUN -p mkdir /apt-mirror

COPY mirror.list /etc/apt/mirror.list
COPY entry.sh /entry.sh

CMD /bin/bash /entry.sh
