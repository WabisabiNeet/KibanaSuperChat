FROM golang:1.13.4-buster

WORKDIR /var/lib/app/
RUN go get github.com/WabisabiNeet/CollectSuperChat/selenium/wait-for-selenium
RUN cp /go/bin/wait-for-selenium .
RUN echo ${GOPATH}

RUN go get -d github.com/WabisabiNeet/CollectSuperChat
WORKDIR /go/src/github.com/WabisabiNeet/CollectSuperChat
RUN go build -tags=release
WORKDIR /var/lib/app/
RUN cp /go/src/github.com/WabisabiNeet/CollectSuperChat/CollectSuperChat .
RUN cp /go/src/github.com/WabisabiNeet/CollectSuperChat/start.sh .
RUN chmod +x start.sh

CMD [ "./start.sh" ]
