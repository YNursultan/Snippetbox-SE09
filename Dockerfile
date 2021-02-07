FROM golang:1.15

RUN mkdir -p /usr/src/app/
ADD . /usr/src/app/
WORKDIR /usr/src/app/

EXPOSE 4000
EXPOSE 5432
EXPOSE 8989

COPY . /usr/src/app/
RUN go mod download

#CMD go run ./cmd/web
#FROM golang:1.15
#
#RUN mkdir -p /app
#ADD . /app
#WORKDIR /app
#ENTRYPOINT /app
#
#EXPOSE 4000
#EXPOSE 5432
#EXPOSE 8989
#
#COPY . /app
#RUN go mod download
#
#FROM alpine:latest
#RUN apk --no-cache add ca-certificates
#WORKDIR /root/
#COPY --from=0 /app .
#CMD ./app