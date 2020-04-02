FROM ubuntu:18.04

RUN apt-get update -y
RUN apt-get -y dist-upgrade
RUN apt-get -yq install net-tools nginx python-pip
RUN apt-get install -y python3.8
RUN apt-get install nginx -y

COPY omnifood/. /var/www/html/
RUN chmod -R +rx /var/www/html/
EXPOSE 80
CMD nginx && tail -f /dev/null
