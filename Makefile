.PHONY: dev
dev:
	docker-compose up --build

.PHONY: dev-d
dev-d:
	docker-compose up --build -d

.PHONY: api
api: dev-d
	docker-compose logs -f api
