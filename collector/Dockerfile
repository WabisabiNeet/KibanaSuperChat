FROM golang:1.13.4-buster

RUN go get -d github.com/WabisabiNeet/CollectSuperChat

WORKDIR /go/src/github.com/WabisabiNeet/CollectSuperChat
RUN go build -tags=release

WORKDIR /var/lib/app/
RUN cp /go/src/github.com/WabisabiNeet/CollectSuperChat/CollectSuperChat .


CMD ["CollectSuperChat"]
