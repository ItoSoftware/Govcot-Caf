FROM quay.io/keycloak/keycloak:14.0.0 AS base
COPY Themes/cien /opt/jboss/keycloak/themes/cien
COPY Themes/ssigpd /opt/jboss/keycloak/themes/ssigpd
COPY Themes/mintic /opt/jboss/keycloak/themes/mintic

RUN sed -i -e 's/<web-context>auth<\/web-context>/<web-context>accounts\/auth<\/web-context>/' $JBOSS_HOME/standalone/configuration/standalone.xml
RUN sed -i -e 's/<web-context>auth<\/web-context>/<web-context>accounts\/auth<\/web-context>/' $JBOSS_HOME/standalone/configuration/standalone-ha.xml