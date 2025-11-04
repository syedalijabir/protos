#!/bin/bash

# Install protoc plugins
go install google.golang.org/protobuf/cmd/protoc-gen-go@v1.31.0
go install google.golang.org/grpc/cmd/protoc-gen-go-grpc@v1.3.0

# Generate for url-service
protoc --go_out=. --go-grpc_out=. url-service/url.proto

# Generate for cache-service
protoc --go_out=. --go-grpc_out=. cache-service/cache.proto

# Generate for storage-service
protoc --go_out=. --go-grpc_out=. storage-service/storage.proto

echo "All proto files generated!"
