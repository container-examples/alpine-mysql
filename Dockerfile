FROM alpine:3.6

LABEL MAINTAINER="Aurelien PERRIER <a.perrier89@gmail.com>"
LABEL APP="mariadb"
LABEL APP_VERSION="10.1.26-r0"
LABEL APP_REPOSITORY="https://pkgs.alpinelinux.org/package/edge/main/aarch64/mysql"
LABEL APP_DESCRIPTION="db"

ENV TIMEZONE Europe/Paris

# Installing packages MariaDB
RUN apk add --no-cache mysql
RUN apk add --no-cache -t .build-deps wget

RUN addgroup mysql mysql
RUN mkdir -p /var/log/mysql

# Work path
WORKDIR /scripts

# Copy of the MySQL startup script
COPY ./scripts/start.sh ./start.sh
RUN chmod +x ./start.sh

# Creating the persistent volume
VOLUME [ "/var/lib/mysql" ]

EXPOSE 3306

ENTRYPOINT [ "./start.sh" ]