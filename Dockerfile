FROM golang:latest

ENV HTTP_PROXY="http://cloudpxgot1.srv.volvo.com:8080/"

# Set the Current Working Directory inside the container
WORKDIR /app

# Copy go mod and sum files
COPY go.mod go.sum ./

# Download all dependencies. Dependencies will be cached if the go.mod and go.sum files are not changed
RUN go mod download

COPY . .

# Build the Go app
RUN go build -o main .

EXPOSE 1718

# Command to run the executable
CMD ["./main"]