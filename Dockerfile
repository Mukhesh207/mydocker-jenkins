# use the official ubuntu image as the base image
FROM ubuntu
#update the packages list and install apache2
RUN apt-get update -y
RUN apt-get install apache2 -y
# cpoy the index.html to the apche root directory
COPY index.html /var/www/html/
# start the apache2 sevice in the forground
CMD ["/usr/sbin/apachectl","-D","FOREGROUND"]
