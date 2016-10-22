FROM evabase

RUN pacman -S --noconfirm go git

ENV GOPATH /usr/local/lib/go
ENV GOBIN $GOPATH/bin

RUN git clone https://github.com/gidsi/eva-backend.git eva-backend
WORKDIR ./eva-backend

ARG SECRET=SECRET
RUN sed -i "s/<SECRET>/${SECRET}/" config.yaml
RUN cat config.yaml

RUN go get
RUN go install

RUN ln -s /usr/local/lib/go/bin/eva-backend /usr/local/bin

EXPOSE 8080

CMD eva-backend
