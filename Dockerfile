FROM nginx
LABEL Name=harvick Version=0.0.1
# RUN apt-get -y update && apt-get install -y fortunes
# CMD /usr/games/fortune -a | cowsay
COPY nginx.conf /etc/nginx/nginx.conf
COPY default.conf /etc/nginx/conf.d/default.conf
COPY dist/harvick /srv/www/htdocs