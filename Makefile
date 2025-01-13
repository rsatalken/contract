.PHONY: proto-deps
proto-deps:
	go install google.golang.org/protobuf/cmd/protoc-gen-go \
               google.golang.org/grpc/cmd/protoc-gen-go-grpc
.PHONY: proto
proto:
	protoc --proto_path=. --go-grpc_out=. --go_out=. --go_opt=paths=source_relative --go-grpc_opt=paths=source_relative contract.proto
