docker exec -it --tty=false my-docker-image php -v
docker exec -it --tty=false my-docker-image php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
docker exec -it --tty=false my-docker-image php composer-setup.php
docker exec -it --tty=false my-docker-image php -r "unlink('composer-setup.php');"
docker exec -it --tty=false my-docker-image php composer.phar require  --dev phpunit/phpunit
docker exec -it --tty=false my-docker-image php composer.phar install
docker exec -it --tty=false my-docker-image ls -l ./vendor
docker exec -it --tty=false my-docker-image ls -l ./vendor/bin
docker exec -it --tty=false my-docker-image ./vendor/bin/phpunit --coverage-text
