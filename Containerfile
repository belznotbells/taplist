FROM nginx:latest
MAINTAINER belznotbells
LABEL description="a test to build rhel9 and httpd website and copy index.html to container"
COPY index.html /var/www/html/
CMD ["nginx", "-g", "daemon off;"]
