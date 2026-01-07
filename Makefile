.PHONY: up down build logs init shell migrate superuser test doctor

up:
	docker compose up --build

down:
	docker compose down

build:
	docker compose build

logs:
	docker compose logs -f --tail=200

init:
	./scripts/init.sh

migrate:
	docker compose run --rm web python manage.py migrate

superuser:
	docker compose run --rm web python manage.py createsuperuser

shell:
	docker compose run --rm web bash

doctor:
	./scripts/doctor.sh

test:
	docker compose run --rm web python manage.py test
