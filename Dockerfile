FROM ubuntu:latest

RUN apt-get update \
    && apt-get install ca-certificates -y
    # && apt-get install -y vim \

ADD alist-linux-amd64 /

# RUN ls -alh

EXPOSE 5244
CMD [ "/alist-linux-amd64", "-docker"]