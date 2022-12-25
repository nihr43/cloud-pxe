all: build

ipxe:
	git clone git@github.com:ipxe/ipxe.git

ipxe/src/bin/ipxe.pxe: ipxe
	$(MAKE) -C ipxe/src all -j4

build: ipxe/src/bin/ipxe.pxe
	docker build . --tag images.local:5000/tftpd
	docker push images.local:5000/tftpd
