.PHONY: clean install update init

DCR=docker-compose run --rm --no-deps php
COMPOSER=docker run --rm --interactive --tty --volume $(shell pwd)/site:/app composer
VENDOR_TARGET=site/vendor site/composer.lock

default: ${VENDOR_TARGET}

${VENDOR_TARGET}: site/composer.json
	${MAKE} install

clean:
	${DCR} rm -rf vendor

install:
	${COMPOSER} install --no-ansi --no-interaction --no-progress --no-scripts --optimize-autoloader

update:
	${COMPOSER} composer update

init: clean ${VENDOR_TARGET}
