FROM cxops/ruby:2.1.3

RUN apt-get update -q && \
    apt-get install -qy nginx && \
    echo "daemon off;" >> /etc/nginx/nginx.conf

ADD app.conf /etc/nginx/sites-enabled/default
ADD start-service /usr/bin/start-service

RUN chmod a+x /usr/bin/start-service
