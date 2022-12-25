from alpine

run apk add tftp-hpa
copy ipxe.pxe /var/tftpboot/

cmd ["/usr/sbin/in.tftpd", "--listen", "--secure", "/var/tftpboot/", "--address", "0.0.0.0:69", "--verbose", "--foreground"]
