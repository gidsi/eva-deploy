FROM evabase

RUN pacman -Syyu --noconfirm --noprogressbar npm git nginx

ADD nginx.conf /etc/nginx/nginx.conf

RUN git clone https://github.com/gidsi/eva-frontend.git

WORKDIR eva-frontend

RUN npm install
RUN npm run deploy

RUN mv dist/* /usr/share/nginx/html
RUN mkdir /tmp/osm
CMD nginx
