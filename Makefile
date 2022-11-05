.PHONY: down

default:
	docker compose up -d

down:
	docker compose down
	docker system prune -a