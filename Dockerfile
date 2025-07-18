FROM ubuntu
WORKDIR /var/www/html
RUN apt-get update 
RUN apt-get install -y apache2 
COPY . .
WORKDIR /var/www/html/
RUN chmod -R 777 /var/www/html/
RUN unzip -j 2137_barista_cafe
RUN cp -rvf 2137_barista_cafe/* .
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
EXPOSE 80   
