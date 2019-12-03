FROM golang:1.13.4-buster

WORKDIR /var/lib/app/
RUN go get github.com/WabisabiNeet/CollectSuperChat/selenium/wait-for-selenium
RUN cp ${GOPATH}/bin/wait-for-selenium .
RUN echo ${GOPATH}

RUN go get -d github.com/WabisabiNeet/CollectSuperChat
WORKDIR ${GOPATH}/src/github.com/WabisabiNeet/CollectSuperChat
RUN go build -tags=release
WORKDIR /var/lib/app/
RUN cp ${GOPATH}/src/github.com/WabisabiNeet/CollectSuperChat/CollectSuperChat .
RUN cp ${GOPATH}/src/github.com/WabisabiNeet/CollectSuperChat/start.sh .
RUN chmod +x start.sh

CMD [ "./start.sh" ]
