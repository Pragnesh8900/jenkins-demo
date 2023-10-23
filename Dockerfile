FROM nginx
MAINTAINER Pragnesh Patel
LABEL maintainer="Pragnesh Patel"
#RUN apt-get -y update && apt-get -y install nginx
WORKDIR /root
COPY index.html /usr/share/nginx/html/index.html 
COPY default.conf /etc/nginx/conf.d/default.conf
COPY ca.crt /etc/ssl/private/ca.crt
COPY ca.key /etc/ssl/private/ca.key
CMD ["nginx", "-g", "daemon off;"]
EXPOSE 80 443