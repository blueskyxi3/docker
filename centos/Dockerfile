FROM openjdk:latest
MAINTAINER vincentzou

ENV PARAMS="xx1"

ENV TZ=PRC
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
ENTRYPOINT ["bash"]
