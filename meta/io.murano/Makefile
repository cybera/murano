all: zip import

zip:
	rm io.murano.zip || true
	zip -r io.murano.zip *

import:
	. ~/openrc && murano package-import --is-public --exists-action u io.murano.zip

upload:
	. ~/cyberarc && swift upload murano/apps io.murano.zip
