init:
	docker-compose build web
	docker-compose run --rm web yarn install
	docker-compose run --rm web bundle exec rake db:create
