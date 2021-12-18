FROM golang:1.17.5

WORKDIR /go/src/terraform-provider-boundary
COPY . .

RUN go get -d -v ./...
RUN go install -v ./...
