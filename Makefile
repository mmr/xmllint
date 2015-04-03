#
# Marcio Ribeiro <binary (a) b1n.org>
# Started: Thu Apr 2 23:20:31 BRST 2015
#

# Needed external commands
DOCKER ?= /usr/bin/docker

# Constants
CONTAINER_NS = mribeiro
CONTAINER_REPO = xmllint
UID = $(id -u)
GID = $(id -g)

build-image:
	$(DOCKER) build -t $(CONTAINER_NS)/$(CONTAINER_REPO) image

run:
	$(DOCKER) run \
		--rm -i --user=$(UID):$(GID) \
		$(CONTAINER_NS)/$(CONTAINER_REPO) \
		$@

default: run
