setup:
	make stop
	make build
	make services
	make install
	make migrate-db

stop:
	docker-compose stop

build:
	docker-compose build

services:
	docker-compose up -d db

install:
	docker-compose run --rm app "bundle install"

migrate-db:
	make migrate-dev
	make migrate-test

migrate-dev:
	docker-compose run -e DATABASE_URL=postgres://postgres:postgres@db:5432/app_dev --rm app "bundle exec rake migrate[1]"
	docker-compose run -e DATABASE_URL=postgres://app:postgres@db:5432/app_dev --rm app "bundle exec rake migrate[2]"
	docker-compose run -e DATABASE_URL=postgres://app_password:postgres@db:5432/app_dev --rm app "bundle exec rake migrate[3]"
	docker-compose run -e DATABASE_URL=postgres://app:postgres@db:5432/app_dev --rm app "bundle exec rake migrate"

migrate-test:
	docker-compose run -e DATABASE_URL=postgres://postgres:postgres@db:5432/app_test --rm app "bundle exec rake migrate[1]"
	docker-compose run -e DATABASE_URL=postgres://app:postgres@db:5432/app_test --rm app "bundle exec rake migrate[2]"
	docker-compose run -e DATABASE_URL=postgres://app_password:postgres@db:5432/app_test --rm app "bundle exec rake migrate[3]"
	docker-compose run -e DATABASE_URL=postgres://app:postgres@db:5432/app_test --rm app "bundle exec rake migrate"

start:
	docker-compose up app

console:
	docker-compose run --rm app "bundle exec rake console"

test:
	docker-compose run -e ENV_FILE=.env.test --rm app "bundle exec rspec"

annotate:
	docker-compose run -e DATABASE_URL=postgres://app:postgres@db:5432/app_dev --rm app "bundle exec rake annotate"

down:
	docker-compose down
