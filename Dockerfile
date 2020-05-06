# Use an official Alpine Linux as a parent image
FROM alpine:latest

LABEL Author="paulocorreia"

# Install or Update dhcp, tzdada, create dhcpd.leases
RUN apk --update add dhcp  && \
    apk --update add tzdata && \
    touch /var/lib/dhcp/dhcpd.leases

# Copy dhcpd.conf the current directory contents into the container at /etc/dhcp
COPY dhcpd.conf /etc/dhcp

# Make port 67 available to the world outside this container
EXPOSE 67/udp 67/tcp

# Run dhcpd service when the container launches
CMD /usr/sbin/dhcpd -4 -f -d --no-pid -cf /etc/dhcp/dhcpd.conf