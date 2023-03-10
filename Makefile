docker:
	./mvnw clean
	./mvnw compile
	./mvnw package
	docker buildx build . --platform linux/amd64,linux/arm64 -t ghcr.io/helpet-inc/config-server:0.0.1-SNAPSHOT --push