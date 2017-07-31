FROM library/cassandra:2.1.18
MAINTAINER Bandsintown Devops Team <devops@bandsintown.com>

ENV SERVICE_NAME="cassandra" SERVICE_VERSION=${CASSANDRA_VERSION} S6_OVERLAY_VERSION="1.19.1.1" CONSUL_TEMPLATE_VERSION="0.18.5" CONSUL_VERSION="0.8.4"

# Install root filesystem
COPY rootfs /

# Install base packages
RUN apt-get update && apt-get install -y curl wget bash tree jq unzip vim dnsutils telnet && \
    curl -Ls https://github.com/just-containers/s6-overlay/releases/download/v${S6_OVERLAY_VERSION}/s6-overlay-amd64.tar.gz | tar -xz -C / && \
    curl -Ls https://releases.hashicorp.com/consul-template/${CONSUL_TEMPLATE_VERSION}/consul-template_${CONSUL_TEMPLATE_VERSION}_linux_amd64.zip -o consul-template.zip && unzip consul-template.zip -d /usr/local/bin && \
    curl -Ls https://releases.hashicorp.com/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_amd64.zip -o consul.zip && unzip consul.zip -d /usr/local/bin && \
    rm -f consul* && \
    echo "Cassandra Official image: $SERVICE_VERSION" >> /root/.built && \
    echo "- with S6 Overlay: $S6_OVERLAY_VERSION, Consul Template: $CONSUL_TEMPLATE_VERSION, Consul: $CONSUL_VERSION" >> /root/.built

# Enable S6 as default entrypoint
ENTRYPOINT ["/init"]
WORKDIR /etc/cassandra

CMD ["gosu", "cassandra", "cassandra", "-f"]