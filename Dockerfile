FROM nginx
RUN rm /etc/nginx/nginx.conf /etc/nginx/conf.d/default.conf
COPY content /usr/share/nginx/html
# COPY conf /etc/nginx

FROM centos:7
#FROM centos:8

RUN yum -y install curl
RUN curl --silent --location <https://rpm.nodesource.com/setup_10.x> | bash -
RUN yum -y install nodejs
RUN npm install -g n
RUN n 12.20.1
