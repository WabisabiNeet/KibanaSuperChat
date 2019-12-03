FROM golang:1.13.4-buster

WORKDIR /var/lib/app
RUN go get -d github.com/WabisabiNeet/CollectSuperChat
RUN /go/src/github.com/WabisabiNeet/CollectSuperChat/build_release.bat
RUN cp /go/bin/CollectSuperChat .

CMD ["CollectSuperChat"]
