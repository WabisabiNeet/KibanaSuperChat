FROM golang:golang:1.13.4-alpine3.10 as builder
RUN go get -d github.com/WabisabiNeet/CollectSuperChat
WORKDIR ${GOPATH}/src/github.com/WabisabiNeet/CollectSuperChat
RUN go build -tags=release
WORKDIR /var/lib/app/
RUN cp ${GOPATH}/src/github.com/WabisabiNeet/CollectSuperChat/CollectSuperChat .
RUN cp ${GOPATH}/src/github.com/WabisabiNeet/CollectSuperChat/start.sh .
RUN chmod +x start.sh

FROM chromedp/headless-shell:79.0.3945.130
WORKDIR /var/lib/app/
COPY --from=builder /var/lib/app/CollectSuperChat .
COPY --from=builder /var/lib/app/start.sh .
RUN chmod +x start.sh
CMD [ "./start.sh" ]
