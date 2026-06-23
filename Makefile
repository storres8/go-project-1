.DEFAULT_GOAL := build
.PHONY: fmt vet build clean

fmt:
	go fmt ./...
vet: fmt
	go vet ./...
build: vet
	go build -o bin/app ./cmd

clean:
	rm -rf bin