DOCKER_NAMESPACE =	armbuild/
NAME =			scw-app-pydio
VERSION =		latest
VERSION_ALIASES =	6.0.7 6.0 6
TITLE =			Pydio
DESCRIPTION =		Pydio
DOC_URL =		https://www.scaleway.com/docs/deploy-pydio-with-object-storage
SOURCE_URL =		https://github.com/scaleway/image-app-pydio


## Image tools  (https://github.com/scaleway/image-tools)
all:	docker-rules.mk
docker-rules.mk:
	wget -qO - http://j.mp/scw-builder | bash
-include docker-rules.mk
## Below you can add custom makefile commands and overrides
