.PHONY: prod
prod: down-prod
	docker-compose -f docker-compose.prod.yml -p emaily-app-prod up --build

.PHONY: dev
dev: down-dev
	docker-compose -f docker-compose.yml -p emaily-app-dev up --build

.PHONY: down-prod
down-prod:
	docker-compose -f docker-compose.prod.yml -p emaily-app-prod down --remove-orphans

.PHONY: down-dev
down-dev:
	docker-compose -f docker-compose.yml -p emaily-app-dev down --remove-orphans

.PHONY: attach-client-prod
attach-client-prod:
	docker-compose -f docker-compose.prod.yml -p emaily-app-prod exec client sh

.PHONY: attach-client-dev
attach-client-dev:
	docker-compose -f docker-compose.yml -p emaily-app-dev exec client sh