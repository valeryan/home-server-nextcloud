FROM nginx:alpine

# Change Nginx config here...
RUN rm /etc/nginx/conf.d/default.conf
ADD ./etc/nginx.conf /etc/nginx/nginx.conf
