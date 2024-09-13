# Stage 1: Build
FROM golang:1.21-alpine AS builder

WORKDIR /app

COPY go.mod go.sum ./
RUN go mod download

COPY . .

RUN go build -o main

# Stage 2: Final Image
FROM alpine:3.17

WORKDIR /app

COPY --from=builder /app/main .

CMD ["./main"]