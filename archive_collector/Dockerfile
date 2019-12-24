FROM golang:1.13.4-buster

WORKDIR /var/lib/app/
RUN go get github.com/WabisabiNeet/CollectSuperChat/archive
RUN cp ${GOPATH}/bin/archive .
RUN echo ${GOPATH}

