FROM ubuntu:18.04
RUN apt-get update
RUN apt-get install -y nginx
COPY index.nginx-debian.html /var/www/html
COPY start.sh /root/start.sh
EXPOSE 80
ENTRYPOINT /root/start.sh

