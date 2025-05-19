
Dockerfile

FROM ubuntu:22.04

ENV DEBIAN FRONTEND-noninteractive

RUN apt-get update && \

apt-get install -y tmate tzdata expect && \

Infs/usr/share/zoneinfo/Asia/Kathmandu/etc/localtime && \

dpkg-reconfigure -f noninteractive tzdata && \

apt-get clean

COPY start.sh/start.sh

RUN chmod +x /start.sh

CMD ["/start.sh"]
