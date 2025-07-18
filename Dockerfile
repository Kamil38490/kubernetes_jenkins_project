FROM ubuntu
RUN apt-get update 
RUN apt-get install -y apache2 \
 zip\
 unzip
ADD https://www.tooplate.com/download/2137_barista_cafe /var/www/html/
WORKDIR /var/www/html/
RUN unzip 2137_barista_cafe.zip
RUN cp -rvf 2137_barista_cafe/* .
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
EXPOSE 80   
