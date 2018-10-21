FROM ubuntu:18.04

RUN apt update && DEBIAN_FRONTEND=noninteractive apt install -y \
        vim slapd ldap-utils

COPY entrypoint.sh /sbin/entrypoint.sh
RUN chmod a+x /sbin/entrypoint.sh

ENTRYPOINT ["/sbin/entrypoint.sh"]
