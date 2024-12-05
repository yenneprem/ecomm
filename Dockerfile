FROM ubuntu
RUN apt update
RUN apt install ngix
RUN rm -rf /var/www/html/*
COPY ./ecom/* /var/www/html/
EXOPOSE 80
CMD ["nginx", "-g", "daemon off;"]

FROM nginx:alpine
#RUN apt update
#RUN apt install ngix
#RUN rm -rf /var/www/html/*
COPY ./ecom/* /usr/share/nginx/html/
EXOPOSE 80
CMD ["nginx", "-g", "daemon off;"]
