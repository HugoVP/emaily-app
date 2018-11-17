.PHONY: prod
prod:
	docker-compose -f docker-compose.prod.yml -p emaily-app-prod up --build

.PHONY: prod-d
prod-d:
	docker-compose -f docker-compose.prod.yml -p emaily-app-prod up --build -d

.PHONY: dev
dev:
	docker-compose -f docker-compose.yml -p emaily-app-dev up --build

.PHONY: dev-d
dev-d:
	docker-compose -f docker-compose.yml -p emaily-app-dev up --build -d

.PHONY: api
api: dev-d
	docker-compose -f docker-compose.yml -p emaily-app-dev logs -f api

.PHONY: client
client: dev-d
	docker-compose -f docker-compose.yml -p emaily-app-dev logs -f client
