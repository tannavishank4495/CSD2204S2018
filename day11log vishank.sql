MariaDB [csd2204s18]> select * from products;
+------+-----------------+-------+--------------+
| Code | Name            | Price | Manufacturer |
+------+-----------------+-------+--------------+
|    1 | Hard drive      |   240 |            5 |
|    2 | Memory          |   120 |            6 |
|    3 | ZIP drive       |   150 |            4 |
|    4 | Floppy disk     |     5 |            6 |
|    5 | Monitor         |   240 |            1 |
|    6 | DVD drive       |   180 |            2 |
|    7 | CD drive        |    90 |            2 |
|    8 | Printer         |   270 |            3 |
|    9 | Toner cartridge |    66 |            3 |
|   10 | DVD burner      |   180 |            2 |
|   11 | Printer         |    40 |            7 |
|   12 | Toner cartridge |    54 |            7 |
|   13 | DVD burner      |    78 |            7 |
+------+-----------------+-------+--------------+
13 rows in set (0.05 sec)

MariaDB [csd2204s18]> CREATE VIEW v1 AS SELECT * FROM products;
Query OK, 0 rows affected (0.07 sec)

MariaDB [csd2204s18]> show tables;
+----------------------+
| Tables_in_csd2204s18 |
+----------------------+
| c1                   |
| countries            |
| customer             |
| departments          |
| dept                 |
| employees            |
| job_history          |
| jobs                 |
| locations            |
| m1                   |
| manu                 |
| movies               |
| orders               |
| person               |
| products             |
| regions              |
| v1                   |
+----------------------+
17 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from v1;
+------+-----------------+-------+--------------+
| Code | Name            | Price | Manufacturer |
+------+-----------------+-------+--------------+
|    1 | Hard drive      |   240 |            5 |
|    2 | Memory          |   120 |            6 |
|    3 | ZIP drive       |   150 |            4 |
|    4 | Floppy disk     |     5 |            6 |
|    5 | Monitor         |   240 |            1 |
|    6 | DVD drive       |   180 |            2 |
|    7 | CD drive        |    90 |            2 |
|    8 | Printer         |   270 |            3 |
|    9 | Toner cartridge |    66 |            3 |
|   10 | DVD burner      |   180 |            2 |
|   11 | Printer         |    40 |            7 |
|   12 | Toner cartridge |    54 |            7 |
|   13 | DVD burner      |    78 |            7 |
+------+-----------------+-------+--------------+
13 rows in set (0.00 sec)

MariaDB [csd2204s18]> CREATE VIEW v1 AS SELECT * FROM products where price > 100;
ERROR 1050 (42S01): Table 'v1' already exists
MariaDB [csd2204s18]> CREATE OR REPLACE VIEW v1 AS SELECT * FROM products where price > 100;
Query OK, 0 rows affected (0.03 sec)

MariaDB [csd2204s18]> select * from v1;
+------+------------+-------+--------------+
| Code | Name       | Price | Manufacturer |
+------+------------+-------+--------------+
|    1 | Hard drive |   240 |            5 |
|    2 | Memory     |   120 |            6 |
|    3 | ZIP drive  |   150 |            4 |
|    5 | Monitor    |   240 |            1 |
|    6 | DVD drive  |   180 |            2 |
|    8 | Printer    |   270 |            3 |
|   10 | DVD burner |   180 |            2 |
+------+------------+-------+--------------+
7 rows in set (0.00 sec)

MariaDB [csd2204s18]> insert into v1 values(20,'USB port',89,2);
Query OK, 1 row affected (0.08 sec)

MariaDB [csd2204s18]> select * from products;
+------+-----------------+-------+--------------+
| Code | Name            | Price | Manufacturer |
+------+-----------------+-------+--------------+
|    1 | Hard drive      |   240 |            5 |
|    2 | Memory          |   120 |            6 |
|    3 | ZIP drive       |   150 |            4 |
|    4 | Floppy disk     |     5 |            6 |
|    5 | Monitor         |   240 |            1 |
|    6 | DVD drive       |   180 |            2 |
|    7 | CD drive        |    90 |            2 |
|    8 | Printer         |   270 |            3 |
|    9 | Toner cartridge |    66 |            3 |
|   10 | DVD burner      |   180 |            2 |
|   11 | Printer         |    40 |            7 |
|   12 | Toner cartridge |    54 |            7 |
|   13 | DVD burner      |    78 |            7 |
|   20 | USB port        |    89 |            2 |
+------+-----------------+-------+--------------+
14 rows in set (0.00 sec)

MariaDB [csd2204s18]> delecte from v1 where code=20;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'delecte from v1 where code=20' at line 1
MariaDB [csd2204s18]> delete from v1 where code=20;
Query OK, 0 rows affected (0.00 sec)

MariaDB [csd2204s18]> select * from products;
+------+-----------------+-------+--------------+
| Code | Name            | Price | Manufacturer |
+------+-----------------+-------+--------------+
|    1 | Hard drive      |   240 |            5 |
|    2 | Memory          |   120 |            6 |
|    3 | ZIP drive       |   150 |            4 |
|    4 | Floppy disk     |     5 |            6 |
|    5 | Monitor         |   240 |            1 |
|    6 | DVD drive       |   180 |            2 |
|    7 | CD drive        |    90 |            2 |
|    8 | Printer         |   270 |            3 |
|    9 | Toner cartridge |    66 |            3 |
|   10 | DVD burner      |   180 |            2 |
|   11 | Printer         |    40 |            7 |
|   12 | Toner cartridge |    54 |            7 |
|   13 | DVD burner      |    78 |            7 |
|   20 | USB port        |    89 |            2 |
+------+-----------------+-------+--------------+
14 rows in set (0.00 sec)

MariaDB [csd2204s18]> select name,price from products where name LIKe '%drives';
Empty set (0.00 sec)

MariaDB [csd2204s18]> select name,price from products where name LIKe '%drive';
+------------+-------+
| name       | price |
+------------+-------+
| Hard drive |   240 |
| ZIP drive  |   150 |
| DVD drive  |   180 |
| CD drive   |    90 |
+------------+-------+
4 rows in set (0.00 sec)

MariaDB [csd2204s18]> CREATE OR REPLACE VIEW v2 AS SELECT name,price from products where name like '%drive';
Query OK, 0 rows affected (0.01 sec)

MariaDB [csd2204s18]> show tables;
+----------------------+
| Tables_in_csd2204s18 |
+----------------------+
| c1                   |
| countries            |
| customer             |
| departments          |
| dept                 |
| employees            |
| job_history          |
| jobs                 |
| locations            |
| m1                   |
| manu                 |
| movies               |
| orders               |
| person               |
| products             |
| regions              |
| v1                   |
| v2                   |
+----------------------+
18 rows in set (0.00 sec)

MariaDB [csd2204s18]> select products.code,products.name,manu.name from manu inner join products ON products.manufacturer= manu.code;
+------+-----------------+-------------------+
| code | name            | name              |
+------+-----------------+-------------------+
|    1 | Hard drive      | Fujitsu           |
|    2 | Memory          | Winchester        |
|    3 | ZIP drive       | Iomega            |
|    4 | Floppy disk     | Winchester        |
|    5 | Monitor         | Sony              |
|    6 | DVD drive       | Creative Labs     |
|    7 | CD drive        | Creative Labs     |
|    8 | Printer         | Hewlett-Packard   |
|    9 | Toner cartridge | Hewlett-Packard   |
|   10 | DVD burner      | Creative Labs     |
|   11 | Printer         | moxDroid Labs Inc |
|   12 | Toner cartridge | moxDroid Labs Inc |
|   13 | DVD burner      | moxDroid Labs Inc |
|   20 | USB port        | Creative Labs     |
+------+-----------------+-------------------+
14 rows in set (0.00 sec)

MariaDB [csd2204s18]> select products.code,products.name,manu.name "Products",MANU.NAME "manufacturer" from manu inner join products ON products.manufacturer= manu.code;
+------+-----------------+-------------------+-------------------+
| code | name            | Products          | manufacturer      |
+------+-----------------+-------------------+-------------------+
|    1 | Hard drive      | Fujitsu           | Fujitsu           |
|    2 | Memory          | Winchester        | Winchester        |
|    3 | ZIP drive       | Iomega            | Iomega            |
|    4 | Floppy disk     | Winchester        | Winchester        |
|    5 | Monitor         | Sony              | Sony              |
|    6 | DVD drive       | Creative Labs     | Creative Labs     |
|    7 | CD drive        | Creative Labs     | Creative Labs     |
|    8 | Printer         | Hewlett-Packard   | Hewlett-Packard   |
|    9 | Toner cartridge | Hewlett-Packard   | Hewlett-Packard   |
|   10 | DVD burner      | Creative Labs     | Creative Labs     |
|   11 | Printer         | moxDroid Labs Inc | moxDroid Labs Inc |
|   12 | Toner cartridge | moxDroid Labs Inc | moxDroid Labs Inc |
|   13 | DVD burner      | moxDroid Labs Inc | moxDroid Labs Inc |
|   20 | USB port        | Creative Labs     | Creative Labs     |
+------+-----------------+-------------------+-------------------+
14 rows in set (0.00 sec)

MariaDB [csd2204s18]> select first_name,last_name ,salary from employees where salary from employees where salary> ALL (select avg(salary) from employees GROUP BY department_id);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'from employees where salary> ALL (select avg(salary) from employees GROUP BY dep' at line 1
MariaDB [csd2204s18]> CREATE OR REPLACE v4 AS select first_name,last_name ,salary from employees where salary > ALL (select avg(salary) from employees GROUP BY department_id);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'v4 AS select first_name,last_name ,salary from employees where salary > ALL (sel' at line 1
MariaDB [csd2204s18]> CREATE OR REPLACE view v4 AS select first_name,last_name ,salary from employees where salary > ALL (select avg(salary) from employees GROUP BY department_id);
Query OK, 0 rows affected (0.05 sec)

MariaDB [csd2204s18]> select * from v4;
+------------+-----------+----------+
| first_name | last_name | salary   |
+------------+-----------+----------+
| Steven     | King      | 24000.00 |
+------------+-----------+----------+
1 row in set (0.03 sec)

MariaDB [csd2204s18]> drop vie v5;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'vie v5' at line 1
MariaDB [csd2204s18]> drop view v5;
ERROR 1051 (42S02): Unknown table 'csd2204s18.v5'
MariaDB [csd2204s18]> drop view IF EXISTS v5;
Query OK, 0 rows affected, 1 warning (0.00 sec)

MariaDB [csd2204s18]> exit;
