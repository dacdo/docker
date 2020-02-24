FROM ubuntu:14.04
RUN apt-get update && apt-get install -y git && apt-get clean
RUN groupadd -r -g 2200 example && \
useradd -rM -g example -u 2200 dacdo
ENV APPROOT="/app" \
APP="hello.sh" 
WORKDIR $APPROOT
RUN git clone https://github.com/dacdo/docker.git
#ADD . $APPROOT
# ENTRYPOINT ["/app/hello.sh"]
#EXPOSE 33333
#ENTRYPOINT ["/docker/hello/hello.sh"]
USER dacdo:example
ENTRYPOINT ["/app/docker/hello/hello.sh"]
