FROM alpine:3.7

LABEL MAINTAINER="Aurelien PERRIER <a.perrier89@gmail.com>"
LABEL APP="mariadb"
LABEL APP_REPOSITORY="https://pkgs.alpinelinux.org/package/edge/main/aarch64/mysql"

ENV TIMEZONE Europe/Paris

# Installing packages MariaDB
RUN apk add --no-cache mysql
RUN addgroup mysql mysql

# Copy of the MySQL startup script
COPY ./scripts/start.sh start.sh

# Creating the persistent volume
VOLUME [ "/var/lib/mysql" ]

EXPOSE 3306

ENTRYPOINT [ "./start.sh" ]