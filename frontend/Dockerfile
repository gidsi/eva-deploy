FROM evabase

RUN pacman -Syyu --noconfirm --noprogressbar npm git nginx

ADD nginx.conf /etc/nginx/nginx.conf

RUN git clone https://github.com/gidsi/eva-frontend.git

WORKDIR eva-frontend

RUN npm install
RUN npm run build

RUN mv build/* /usr/share/nginx/html

RUN mkdir -p /tmp/osm/temp
RUN mkdir /tmp/osm/cache

EXPOSE 80
CMD nginx
