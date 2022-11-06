.PHONY: down

default:
	docker compose up -d

down:
	docker compose down
	docker system prune -a

build:
	cd gin \
		&& rm -f -R go.mod go.sum \
		&& go mod init gin \
		&& go get -u github.com/gin-gonic/gin \
		&& go get github.com/google/go-github/v48 \
	cd gin/api \
		&& go get