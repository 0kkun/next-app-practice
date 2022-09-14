# ***** フロントエンド用 *****
.PHONY: frontend-start
frontend-start:
	cd frontend; yarn dev

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

.PHONY: down
down:
	docker compose down --remove-orphans

.PHONY: frontend
frontend:
	docker compose exec frontend bash