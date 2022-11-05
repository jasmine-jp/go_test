.PHONY: down

default:
	docker compose up -d

down:
	docker compose down
	docker system prune -a

build:
	cd gin \
		&& go mod init gin \
		&& go get -u github.com/gin-gonic/gin \
		&& go run main.go