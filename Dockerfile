FROM ubuntu:18.04
LABEL maintainer='n.marchand-lourette@attineos-infra.com'
RUN apt-get update
RUN apt-get install -y nginx git
RUN rm -Rf /var/www/html/*
RUN git clone https://github.com/diranetafen/static-website-example/ /var/www/html/
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
