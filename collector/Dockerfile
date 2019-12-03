FROM golang:1.13.4-buster

RUN go get -d github.com/WabisabiNeet/CollectSuperChat
RUN go get github.com/WabisabiNeet/CollectSuperChat/selenium/wait-for-selenium

WORKDIR /go/src/github.com/WabisabiNeet/CollectSuperChat
RUN go build -tags=release

WORKDIR /var/lib/app/
RUN cp /go/src/github.com/WabisabiNeet/CollectSuperChat/CollectSuperChat .
ENTRYPOINT wait-for-selenium ./CollectSuperChat
