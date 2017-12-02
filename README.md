# MySQL

## Versions

Alpine : `3.6`   
MySQL : `mariaDB-10.1.26-r0`

## Credentials

In the `.env` file, change the different values to suit your needs.

## Commands

Pull : `docker pull perriea/alpine-mysql`   
Run : `docker run -d -p 3306:3306 --env-file .env perriea/alpine-mysql`
