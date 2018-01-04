FROM golang:alpine

RUN apk add --no-cache git

WORKDIR /go/src/ha-relay-client
COPY . .

RUN go-wrapper download
RUN go-wrapper install

CMD ["go-wrapper", "run", "-configpath", "/config/config.gcfg"]
