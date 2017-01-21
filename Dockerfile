FROM ubuntu:14.04.5 

MAINTAINER JTucker <jem.tucker@gmail.com>

RUN apt-get update && apt-get install -y python-pip apache2 libapache2-mod-wsgi
RUN pip install django

COPY helloworld /usr/share/helloworld
COPY apache/sites/000-default.conf /etc/apache2/sites-available/000-default.conf

EXPOSE 80

CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
