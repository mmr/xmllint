#
# Marcio Ribeiro <binary (a) b1n.org>
# Started: Thu Apr 2 23:20:31 BRST 2015
#

# Needed external commands
DOCKER ?= /usr/bin/docker

# Constants
IMAGE = mribeiro/xmllint

.PHONY: test

build-image:
	$(DOCKER) build -t $(IMAGE) image

test:
	$(DOCKER) run --rm -i \
		-v $(PWD)/test:/data \
		$(IMAGE) \
		--noout --valid --schema /data/simple.xsd /data/simple.xml
