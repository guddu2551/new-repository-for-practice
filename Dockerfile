FROM httpd:latest
WORKDIR /mnt
MAINTAINER author:guddu
RUN mkdir /mnt/volume
VOLUME ["/mnt/volume"]
COPY index.html /usr/local/apache2/htdocs/
EXPOSE 92
CMD ["httpd" , "-D","FOREGROUND"]
