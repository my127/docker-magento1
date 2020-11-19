ARG VERSION=7.3
ARG BASEOS=stretch
FROM my127/php:${VERSION}-fpm-${BASEOS}

# PHP: additional extensions
# --------------------------
RUN cd /root/installer; ./enable.sh \
  memcached \
  redis
