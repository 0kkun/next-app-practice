.PHONY: lint
lint:
	cd frontend; yarn lint

.PHONY: format
format:
	cd frontend; yarn format

.PHONY: build_c
build_c:
	docker compose build --no-cache --force-rm

.PHONY: build
build:
	docker compose build

.PHONY: up
up:
	docker compose up -d

.PHONY: stop
stop:
	docker compose stop

.PHONY: down
down:
	docker compose down --remove-orphans

.PHONY: frontend
frontend:
	docker compose exec frontend bash

.PHONY: backend
backend:
	docker compose exec backend bash

.PHONY: backend-start
backend-start:
	cd backend; yarn start

.PHONY: frontend-start
frontend-start:
	cd backend; yarn dev

.PHONY: storybook
storybook:
	cd frontend; yarn storybook

.PHONY: jest
jest:
	cd frontend; yarn test