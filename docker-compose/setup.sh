#!/bin/sh

docker-compose exec -u 0 app composer install --no-interaction --prefer-dist --optimize-autoloader

docker-compose exec -u 0 app php artisan storage:link || true
docker-compose exec -u 0 app php artisan key:generate
