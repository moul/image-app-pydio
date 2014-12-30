DOCKER_NAMESPACE =	armbuild/
NAME =			ocs-app-pydio
VERSION =		latest
VERSION_ALIASES =	14.10 utopic 6.0.2 6.0 6
TITLE =			Pydio 6.0.2
DESCRIPTION =		Pydio 6.0.2 with MySQL
DOC_URL =		https://doc.cloud.online.net/applications/pydio.html
SOURCE_URL =		https://github.com/online-labs/image-app-pydio


## Image tools  (https://github.com/online-labs/image-tools)
all:	docker-rules.mk
docker-rules.mk:
	wget -qO - http://j.mp/image-tools | bash
-include docker-rules.mk
## Below you can add custom makefile commands and overrides
