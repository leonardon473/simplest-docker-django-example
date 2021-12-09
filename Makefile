.DEFAULT_GOAL := help

help:
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)

up: ## run the project
	@docker-compose run --service-ports --rm django /bin/bash

stop: ## stop Docker containers without removing them
	@docker-compose stop

down: ## stop and remove Docker containers
	@docker-compose down --remove-orphans

rebuild: ## rebuild base Docker images
	@docker-compose down --remove-orphans
	@docker-compose build --no-cache
