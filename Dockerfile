FROM golang:1.21.0-alpine
RUN apk --no-cache add gcc g++ make git libwebp- dev libwebp-tools ffmpeg imagemagick
WORKDIR /go/src/watgbridge
COPY . /go/src/watgbridge

RUN go build

RUN cd /go/src/watgbridge/ && \
ls -alht watgbridge && \
mkdir -p conf
CMD ["/go/src/watgbridge/watgbridge", "/go/src/watgbridge/conf/config.yaml")
