FROM debian:jessie

LABEL maintainer="jacek@askesis.pl"

ADD scripts/install-base.sh /scripts/

RUN /scripts/install-base.sh

ADD scripts/install.sh /scripts/

RUN /scripts/install.sh
