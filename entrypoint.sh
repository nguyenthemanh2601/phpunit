docker ps
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php composer-setup.php
php -r "unlink('composer-setup.php');"
php composer.phar require  --dev phpunit/phpunit
php composer.phar install
./vendor/bin/phpunit --coverage-text
