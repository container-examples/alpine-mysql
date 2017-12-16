# MySQL

## Versions

Alpine : `3.7`   
MySQL : `mariaDB-10.1.28-r1`

## Credentials

**Default :**  
* `MYSQL_ROOT_PASSWORD` : `root`,
* `MYSQL_DATABASE` : `app`,
* `MYSQL_USER` : `app`,
* `MYSQL_PASSWORD` : `app`,
* `MYSQL_USER_MONITORING` : `monitoring`,
* `MYSQL_PASSWORD_MONITORING` : `monitoring`

**Custom :** In the `.env` file, change the different values to suit your needs.

## Commands

**Pull :** `docker pull perriea/alpine-mysql:3.7`   
**Run :** `docker run -d -p 3306:3306 --env-file .env perriea/alpine-mysql:3.7`
