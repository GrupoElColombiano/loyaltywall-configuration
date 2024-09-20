FROM --platform=linux/amd64 quay.io/keycloak/keycloak:22.0.1 as builder

# Configure a database vendor
ENV KC_DB=mysql

# Enable health and metrics support
ENV KC_HEALTH_ENABLED=true
ENV KC_METRICS_ENABLED=true

WORKDIR /opt/keycloak

COPY ./providers/ /opt/keycloak/providers

COPY ./themes/ /opt/keycloak/themes

RUN /opt/keycloak/bin/kc.sh build --cache-stack=ec2

FROM --platform=linux/amd64 quay.io/keycloak/keycloak:22.0.1
COPY --from=builder /opt/keycloak/ /opt/keycloak/

ENTRYPOINT ["/opt/keycloak/bin/kc.sh"]