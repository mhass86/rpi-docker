FROM scratch
MAINTAINER Marvin Haß
#LABEL architecture="ARMv7"

# Mini Root Filesystem
ADD alpine-minirootfs-3.5.0-armhf.tar.gz /

CMD ["/bin/sh"]
