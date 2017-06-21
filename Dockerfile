#NOVIS Wordpress
FROM wordpress
MAINTAINER tian.marin@gmail.com



#Install Wordpress and WP-CLI for worpdress management
RUN set -ex; \
	curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar; \
	chmod +x wp-cli.phar; \
	mv wp-cli.phar /usr/local/bin/wp; \
	wp cli update; \

CMD wp core install --url=http://localhost --title=Intranet --admin_user=admin --admin_email=intranet@noviscorp.com --skip-email --allow-root

