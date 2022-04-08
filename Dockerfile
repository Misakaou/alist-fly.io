FROM ubuntu:latest

RUN apt-get update \
    && apt-get install ca-certificates -y
    # && apt-get install -y vim \

ADD alist-linux-amd64-v2.3.2 /

# RUN ls -alh

EXPOSE 5244
CMD [ "/alist-linux-amd64-v2.3.2", "-docker"]