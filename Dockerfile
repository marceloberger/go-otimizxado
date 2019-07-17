FROM golang:alpine as multistage

ADD ./src/ci_challenge /go/src/ci_challenge

WORKDIR /go/src/ci_challenge


RUN go install -v \
    && go build

FROM scratch
COPY --from=multistage /go/bin/ci_challenge /go/bin/

CMD ["/go/bin/ci_challenge"]



