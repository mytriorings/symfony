docker-compose up -d \
  && docker exec medial_php_apache composer install \
  && docker exec medial_php_apache composer update
  