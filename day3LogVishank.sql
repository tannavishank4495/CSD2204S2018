MariaDB [(none)]> SHOW VARIABLES LIKE 'variables';
Empty set (0.00 sec)

MariaDB [(none)]> SHOW VARIABLES LIKE 'version';
+---------------+-----------------+
| Variable_name | Value           |
+---------------+-----------------+
| version       | 10.1.21-MariaDB |
+---------------+-----------------+
1 row in set (0.00 sec)

MariaDB [(none)]> SHOW DATABASE;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'DATABASE' at line 1
MariaDB [(none)]> SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| test               |
+--------------------+
2 rows in set (0.02 sec)

MariaDB [(none)]> CREATE DATABASE CSD2204S18;
ERROR 1044 (42000): Access denied for user ''@'localhost' to database 'csd2204s18'
MariaDB [(none)]> CREATE DATABASE CSD2204S18;
ERROR 1044 (42000): Access denied for user ''@'localhost' to database 'csd2204s18'
MariaDB [(none)]> CREATE DATABASE CSD2204S18;
Query OK, 1 row affected (0.00 sec)

MariaDB [(none)]> SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| csd2204s18         |
| information_schema |
| mysql              |
| performance_schema |
| phpmyadmin         |
| test               |
+--------------------+
6 rows in set (0.00 sec)

MariaDB [(none)]> CREATE TABLE Customer(
    -> custId VARCHAR(5) PRIMARY KEY,
    -> name VARCHAR(50),
    -> nickname VARCHAR(10),
    -> city VARCHAR(20)
    -> postalCode VARCHAR(10),
    -> age INTEGER
    -> (3));
ERROR 1046 (3D000): No database selected
MariaDB [(none)]> USE CDD2204S18;
ERROR 1049 (42000): Unknown database 'cdd2204s18'
MariaDB [(none)]>  CREATE TABLE Customer(
    ->     -> custId VARCHAR(5) PRIMARY KEY,
    ->     -> name VARCHAR(50),
    ->     -> nickname VARCHAR(10),
    ->     -> city VARCHAR(20)
    ->     -> postalCode VARCHAR(10),
    -> 
    -> 
    ->  age INTEGER(3));
ERROR 1046 (3D000): No database selected
MariaDB [(none)]> CREATE TABLE Customer(
    -> custId VARCHAR(5) PRIMARY KEY,
    -> name VARCHAR(50),
    -> city VARCHAR(20),
    -> postalCode VARCHAR(10),
    -> age INTEGER(3));
ERROR 1046 (3D000): No database selected
MariaDB [(none)]> USE CSD2204S18;
Database changed
MariaDB [CSD2204S18]> CREATE TABLE Customer(
    -> custId VARCHAR(5) PRIMARY KEY,
    -> name VARCHAR(50),
    -> nickname VARCHAR(10),
    -> city VARCHAR(20),
    -> postalCode VARCHAR(10),
    -> age INTEGER(3));
Query OK, 0 rows affected (0.27 sec)

MariaDB [CSD2204S18]> exit;
