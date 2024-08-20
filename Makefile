gen:
	protoc --proto_path=proto --go_out=pb --go-grpc_out=pb --go_opt=paths=source_relative unaryrpc/unaryrpc.proto clientrpc/clientrpc.proto serverrpc/serverrpc.proto bidirectionrpc/bidirectionrpc.proto

clean:
	rm pb/*.go

server:
	go run cmd/main.go