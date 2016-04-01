FROM nginx:latest

RUN apt-get update \
    && apt-get install nano -y \
    && rm -rf /var/lib/apt/lists/*

COPY default.conf /etc/nginx/conf.d/default.conf
