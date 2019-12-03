FROM golang:1.13.4-buster

RUN go get -d github.com/WabisabiNeet/CollectSuperChat

WORKDIR /go/src/github.com/WabisabiNeet/CollectSuperChat
RUN go build -tags=release
RUN cp ./CollectSuperChat /var/lib/app/

WORKDIR /var/lib/app/
CMD ["CollectSuperChat"]
