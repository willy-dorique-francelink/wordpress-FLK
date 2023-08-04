start:
	docker-compose up -d --build

healthcheck:
	docker-compose run --rm healthcheck

down:
	docker-compose down

install: start healthcheck

configure:
	docker-compose -f docker-compose.yml -f wp-auto-config.yml run --rm wp-auto-config

autoinstall: start
	docker-compose -f docker-compose.yml -f wp-auto-config.yml run --rm wp-auto-config

clean: down
	@echo "💥 Removing related folders/files..."
	@rm -rf  mysql/* wordpress/*

reset: clean

wp: 
	docker-compose run --rm wpcli --allow-root

wp-pluginlist:
	docker-compose run --rm wpcli --allow-root plugin list

wp-info:
	docker-compose run --rm wpcli --allow-root --info

wp-help:
	docker-compose run --rm wpcli --allow-root help

wp-install-woocommerce:
	docker-compose run --rm wpcli --allow-root plugin install woocommerce

wp-install-hello-dolly:
	docker-compose run --rm wpcli --allow-root plugin install hello-dolly --activate

wp-install-acf:
	docker-compose run --rm wpcli --allow-root plugin install https://downloads.wordpress.org/plugin/advanced-custom-fields.6.1.8.zip

# installation de plugins en DEV
wp-install-dev: wp-info wp-install-hello-dolly wp-install-acf wp-pluginlist

# installation de plugins en PROD

# todo vérifier les droits sur les fichiers et dossiers