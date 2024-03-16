docker-dev:
	docker build -t docker-multistage-template:v0.1.0-dev -f build/Dockerfile.dev .
docker-prod:
	docker build -t docker-multistage-template:v0.1.0-prod -f build/Dockerfile.prod .

run:
	docker run -d -p 8080:8080 -e NODE_ENV=production docker-multistage-template:v0.1.0-prod