gen:
	protoc --proto_path=proto --go_out=pb --go_opt=paths=source_relative unary/unary.proto client_stream/client_stream.proto server_stream/server_stream.proto bidirection_stream/bidirection_stream.proto

clean:
	rm pb/*.go

server:
	go run cmd/main.go