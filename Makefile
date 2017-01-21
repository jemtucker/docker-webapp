build:
	docker build -t docker-webapp .

run: build
	docker run -p 80:80 -d docker-webapp
