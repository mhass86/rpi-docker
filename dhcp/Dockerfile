FROM mhass/alpine:latest
MAINTAINER Marvin Haß
RUN apk --update add dhcp && \
     rm -rf /var/cache/apk/*

# Add files to the container.
COPY entrypoint.sh /docker-entrypoint

# Copy dhcp.conf
COPY dhcpd.conf /etc/dhcp/dhcpd.conf

# Define volumes.
VOLUME ["/etc/dhcp", "/var/lib/dhcp"]

# Expose ports.
EXPOSE 67/udp

# Define entrypoint.
ENTRYPOINT ["/docker-entrypoint"]

# Define command
CMD ["/usr/sbin/dhcpd", "-d", "-f", "-cf", "/etc/dhcp/dhcpd.conf", "-lf", "/var/lib/dhcp/dhcpd.leases", "--no-pid", "eth0" ,"eth1", "eth2"]
