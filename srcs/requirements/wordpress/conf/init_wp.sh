#!/bin/bash
sed -i "s/listen = \/run\/php\/php7.3-fpm.sock/listen = 9000/" "/etc/php/7.3/fpm/pool.d/www.conf"
sed -i "s/supervised no/supervised systemd/" "/etc/redis/redis.conf"
mkdir -p /run/php/
touch /run/php/php7.3-fpm.pid
chown -R www-data:www-data /var/www/*
chmod -R 755 /var/www/*
if [ ! -f /var/www/html/wp-config.php ]; then
    mkdir -p /var/www/html/
    wget http://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
    chmod +x wp-cli.phar
    mv wp-cli.phar /usr/local/bin/wp
    cd var/www/html/
    wp core download --allow-root
    cp /var/www/wp-config.php /var/www/html/
    wp core install --allow-root \
        --url=jbenjy.42.fr \
        --title=inception \
        --admin_user=jbenjy \
        --admin_password=password \
        --admin_email=jbenjy@gmail.com
    wp user create jbenjy2 jbenjy2@42.fr \
        --user_pass=1234 \
        --allow-root
    mv /var/www/object-cache.php /var/www/html/wp-content/
fi
service redis-server start
exec "$@"
