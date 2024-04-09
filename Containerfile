FROM ubi9
MAINTAINER belznotbells
LABEL description="a test to build rhel9 and httpd website and copy index.html to container"
RUN yum install -y httpd && yum clean all
COPY index.html /var/www/html/index.html
COPY /images/ /var/www/html/images/
EXPOSE 80
CMD ["httpd", "-D", "FOREGROUND"]
