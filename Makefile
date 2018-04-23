assets-install:
	docker-compose exec node yarn install
assets-rebuild:
	docker-compose exec node npm rebuild node-sass --force
assets-dev:
	docker-compose exec node yarn run dev

assets-watch:
	docker-compose exec node yarn run watch
first:
	docker-compose exec php-cli php artisan key:generate
perm:
	sudo chgrp -R www-data storage bootstrap/cache
	sudo chgrp -R docker storage/docker
	sudo chmod -R ug+rwx storage bootstrap/cache
