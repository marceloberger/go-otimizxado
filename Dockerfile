FROM golang:alpine as multistage

ADD ./src/ci_challenge /go/src/ci_challenge

WORKDIR /go/src/ci_challenge


RUN go install -v \
    && go build

RUN CGO_ENABLED=0 GOOS=linux go install -a -installsuffix cgo -v

FROM scratch

COPY --from=multistage /go/bin/ci_challenge /go/bin/

CMD ["/go/bin/ci_challenge"]



