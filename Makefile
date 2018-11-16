.PHONY: dev
dev:
	docker-compose -f docker-compose.yml up --build

.PHONY: dev-d
dev-d:
	docker-compose -f docker-compose.yml up --build -d

.PHONY: api
api: dev-d
	docker-compose -f docker-compose.yml logs -f api

.PHONY: client
client: dev-d
	docker-compose -f docker-compose.yml logs -f client
