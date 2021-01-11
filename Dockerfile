FROM ghcr.io/wabarc/broker

LABEL version="0.0.1"
LABEL repository="http://github.com/wabarc/distributor"
LABEL homepage="http://github.com/wabarc"
LABEL maintainer="Wayback Archiver <wabarc@tuta.io>"

LABEL com.github.actions.name="Distributor."
LABEL com.github.actions.description="Automated distribute archived webpages."
LABEL com.github.actions.icon="package"
LABEL com.github.actions.color="red"

COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
