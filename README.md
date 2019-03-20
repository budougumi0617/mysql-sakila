# mysql-sakila

[![Docker Pulls](https://img.shields.io/docker/pulls/budougumi0617/mysql-sakila.svg?style=for-the-badge)](https://cloud.docker.com/repository/docker/budougumi0617/mysql-sakila)
[![Docker Automated build](https://img.shields.io/docker/automated/budougumi0617/mysql-sakila.svg?style=for-the-badge)](https://cloud.docker.com/repository/docker/budougumi0617/mysql-sakila)

Dockerfiles for MySQL pre-loaded sample database "Sakila Sample Database".
It database is official sample database. Please see below for the details.

- [Sakila Sample Database](https://dev.mysql.com/doc/sakila/en/)

# Supported MySQL versions
- 5.7
- 8.0(latest)


# Usages

```bash
$ docker run --rm -d -e MYSQL_ALLOW_EMPTY_PASSWORD=yes \
		-p 43306:3306 --name mysql_til budougumi0617/mysql-sakila:5.7

$ mysql -h 127.0.0.1 --port 43306 -uroot -D sakila
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 2
Server version: 5.7.25 MySQL Community Server (GPL)

Copyright (c) 2000, 2018, Oracle and/or its affiliates. All rights reserved.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> show tables;
+----------------------------+
| Tables_in_sakila           |
+----------------------------+
| actor                      |
| actor_info                 |
| address                    |
| category                   |
| city                       |
| country                    |
| customer                   |
| customer_list              |
| film                       |
| film_actor                 |
| film_category              |
| film_list                  |
| film_text                  |
| inventory                  |
| language                   |
| nicer_but_slower_film_list |
| payment                    |
| rental                     |
| sales_by_film_category     |
| sales_by_store             |
| staff                      |
| staff_list                 |
| store                      |
+----------------------------+
23 rows in set (0.01 sec)
```
