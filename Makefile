.PHONY: build
build:  proto-deps proto

.PHONY: proto-deps
proto-deps:
	go install google.golang.org/protobuf/cmd/protoc-gen-go \
               google.golang.org/grpc/cmd/protoc-gen-go-grpc

.PHONY: proto
proto:
	mkdir -p proto
	protoc --proto_path=. --go-grpc_out=proto --go_out=proto --go_opt=paths=source_relative --go-grpc_opt=paths=source_relative v1/contract.proto
