FROM ubuntu
WORKDIR /var/www/html
RUN apt-get update 
RUN apt-get install -y apache2 
COPY . .
WORKDIR /var/www/html/
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
EXPOSE 80   
