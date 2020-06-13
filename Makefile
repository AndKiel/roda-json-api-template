setup:
	make stop
	make build
	make services
	make install

stop:
	docker-compose stop

build:
	docker-compose build

services:
	docker-compose up -d db

install:
	docker-compose run --rm app "bundle install"

start:
	docker-compose up app

test:
	docker-compose run -e ENV_FILE=.env.test --rm app "bundle exec rspec"

down:
	docker-compose down
