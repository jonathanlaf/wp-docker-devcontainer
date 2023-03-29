ARG WORDPRESS_VERSION

FROM wordpress:$WORDPRESS_VERSION

RUN echo "####################################################"
RUN echo "This docker is not intended for production use."
RUN echo "It is only for development purposes."
RUN echo "All emails are sent to Mailhog."
RUN echo "####################################################"

RUN apt-get update
RUN apt-get install inetutils-ping iproute2 -y

RUN mkdir -p /usr/src/wordpress/wp-content/mu-plugins/
COPY ./mu-plugins/mailhog.php /usr/src/wordpress/wp-content/mu-plugins/mailhog.php

COPY ./scripts/add_host.sh /usr/local/bin/add_host.sh

RUN sed -i -e '1 w /tmp/fline' -e '1d' /usr/local/bin/docker-entrypoint.sh
RUN echo "\n" >> /usr/local/bin/add_host.sh
RUN cat /usr/local/bin/docker-entrypoint.sh >> /usr/local/bin/add_host.sh
RUN cat /tmp/fline > /usr/local/bin/docker-entrypoint.sh
RUN cat /usr/local/bin/add_host.sh >> /usr/local/bin/docker-entrypoint.sh