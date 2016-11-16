FROM alpine:latest
MAINTAINER Roberto Aguilar <roberto.c.aguilar@gmail.com>

RUN apk update && \
  apk add build-base ca-certificates libffi-dev ruby ruby-dev tar

RUN gem install fpm  --no-rdoc --no-ri

CMD ["/bin/sh"]
