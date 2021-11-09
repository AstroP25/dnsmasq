FROM scratch
# Change rootfs source as need for architectures (i.e. x86_64, armhf, armv7, aarch64)
ADD alpine-minirootfs-3.14.2-x86_64.tar.gz /

RUN apk update && apk upgrade
RUN apk add dnsmasq

EXPOSE 53
