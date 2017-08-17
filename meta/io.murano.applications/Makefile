all: zip import

zip:
	rm io.murano.applications.zip || true
	zip -r io.murano.applications.zip *

import:
	. ~/openrc && murano package-import --is-public --exists-action u io.murano.applications.zip

upload:
	. ~/cyberarc && swift upload murano/apps io.murano.applications.zip
