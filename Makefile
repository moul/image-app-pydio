DOCKER_NAMESPACE =	armbuild/
NAME =			ocs-app-pydio
VERSION =		utopic
VERSION_ALIASES =	14.10 latest
TITLE =			Pydio 5.3
DESCRIPTION =		Pydio 5.3 with MySQL
DOC_URL =		https://doc.cloud.online.net/applications/pydio.html
SOURCE_URL =		https://github.com/online-labs/image-app-pydio


## Image tools  (https://github.com/online-labs/image-tools)
all:	docker-rules.mk
docker-rules.mk:
	wget -qO - http://j.mp/image-tools | bash
-include docker-rules.mk
## Below you can add custom makefile commands and overrides
