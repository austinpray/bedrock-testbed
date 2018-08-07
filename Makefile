.PHONY: clean install update init phpcs phpcbf

DCR=docker-compose run --rm --no-deps php
COMPOSER=docker run --rm --interactive --tty --volume $(shell pwd)/site:/app composer

default: site/vendor

site/vendor: site/composer.lock
	${MAKE} install

site/composer.lock: site/composer.json
	${MAKE} update

clean:
	${DCR} rm -rf vendor

install:
	${COMPOSER} install --no-ansi --no-interaction --no-progress --no-scripts --optimize-autoloader

update:
	${COMPOSER} update

init: clean ${VENDOR_TARGET}

phpcs:
	${DCR} vendor/bin/phpcs

phpcbf:
	${DCR} vendor/bin/phpcbf
