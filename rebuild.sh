rm -rf ./vendor \
  && docker-compose up -d --build --force-recreate --remove-orphans \
  && docker exec medial_php_apache composer install \
  && docker exec medial_php_apache composer update
