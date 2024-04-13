FROM nginx:latest
MAINTAINER belznotbells
LABEL description="a test to build rhel9 and httpd website and copy index.html to container"
COPY index.html /var/www/html/
COPY nginx-default.conf /etc/nginx/conf.d/default.conf
CMD ["nginx", "-g", "daemon off;"]
