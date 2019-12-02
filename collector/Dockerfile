FROM golang:1.13.4-buster

WORKDIR /var/lib/app
RUN go get github.com/WabisabiNeet/CollectSuperChat
RUN cp /go/bin/CollectSuperChat .

CMD ["CollectSuperChat"]
