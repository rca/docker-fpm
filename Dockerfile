FROM alpine:latest
MAINTAINER Roberto Aguilar <roberto.c.aguilar@gmail.com>

RUN apk update && \
  apk add build-base ca-certificates libffi-dev ruby ruby-dev tar

RUN curl -O https://rubygems.org/downloads/rubygems-update-2.6.8.gem && \
  gem install --local rubygems-update-2.6.8.gem --no-rdoc --no-ri && \
  update_rubygems --no-document && \
  gem install fpm  --no-rdoc --no-ri

CMD ["/bin/sh"]
