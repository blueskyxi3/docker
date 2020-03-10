FROM tomcat:latest

RUN rm -rf /usr/local/tomcat/webapps/ROOT/*
COPY myshop.tar.gz /usr/local/tomcat/webapps/ROOT/myshop.tar.gz
WORKDIR /usr/local/tomcat/webapps/ROOT
RUN tar -zxvf myshop.tar.gz \
    && rm -rf myshop.tar.gz

