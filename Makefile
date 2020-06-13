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
	docker-compose run --rm app "bundle exec rake migrate"
	docker-compose run -e ENV_FILE=.env.test --rm app "bundle exec rake migrate"

start:
	docker-compose up app

test:
	docker-compose run -e ENV_FILE=.env.test --rm app "bundle exec rspec"

annotate:
	docker-compose run --rm app "bundle exec rake annotate"

down:
	docker-compose down
