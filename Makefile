DOCKER_NAMESPACE =	armbuild/
NAME =			scw-app-pydio
VERSION =		latest
VERSION_ALIASES =	14.10 utopic 6.0.2 6.0 6
TITLE =			Pydio 6.0.2
DESCRIPTION =		Pydio 6.0.2 with MySQL
DOC_URL =		https://www.scaleway.com/docs/deploy-pydio-with-object-storage
SOURCE_URL =		https://github.com/scaleway/image-app-pydio


## Image tools  (https://github.com/scaleway/image-tools)
all:	docker-rules.mk
docker-rules.mk:
	wget -qO - http://j.mp/scw-builder | bash
-include docker-rules.mk
## Below you can add custom makefile commands and overrides
