# Makefile for managing Docker commands
IMAGE_NAME = github_portfolio

build:
	docker-compose build  
run:
	docker-compose up

stop:
	docker-compose down

clean:
	docker-compose down -v  
	docker rmi $(IMAGE_NAME)  

.PHONY: build run stop clean
