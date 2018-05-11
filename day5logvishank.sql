MariaDB [(none)]> USE csd2204s18
ERROR 1044 (42000): Access denied for user ''@'localhost' to database 'csd2204s18'
MariaDB [(none)]> USE csd2204s18;
ERROR 1044 (42000): Access denied for user ''@'localhost' to database 'csd2204s18'
MariaDB [(none)]> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| test               |
+--------------------+
2 rows in set (0.00 sec)

MariaDB [(none)]> USE csd2204s2018;
ERROR 1044 (42000): Access denied for user ''@'localhost' to database 'csd2204s2018'
MariaDB [(none)]> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| test               |
+--------------------+
2 rows in set (0.00 sec)

MariaDB [(none)]> USE CSD2204S18;
ERROR 1044 (42000): Access denied for user ''@'localhost' to database 'csd2204s18'
MariaDB [(none)]> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| test               |
+--------------------+
2 rows in set (0.00 sec)

MariaDB [(none)]> show tables;
ERROR 1046 (3D000): No database selected
MariaDB [(none)]> SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| test               |
+--------------------+
2 rows in set (0.00 sec)

MariaDB [(none)]> CREATE DATABASE CSD2204S18;
ERROR 1044 (42000): Access denied for user ''@'localhost' to database 'csd2204s18'
MariaDB [(none)]> CREATE DATABASE CSD2204S2018;
ERROR 1044 (42000): Access denied for user ''@'localhost' to database 'csd2204s2018'
MariaDB [(none)]> CREATE DATABASE CSD2204S2018
    -> ;
ERROR 1044 (42000): Access denied for user ''@'localhost' to database 'csd2204s2018'
MariaDB [(none)]> EXIT
MariaDB [CSD2204S18]> CREATE TABLE Persons (
    -> ID integer(3),
    -> LastName varchar(255) NOT NULL,
    -> FirstName varchar(255) NOT NULL,
    -> Age integer(3),
    -> PRIMARY KEY (ID)
    -> );
Query OK, 0 rows affected (0.23 sec)

MariaDB [CSD2204S18]> CREATE TABLE Orders (
    -> OrderID integer(3) NOT NULL,
    -> OrderNumber integer(3) NOT NULL,
    -> PersonID integer(3),
    -> PRIMARY KEY (OrderID),
    -> CONSTRAINT FK_PersonOrder FOREIGN KEY (PersonID)
    -> REFERENCES Persons(PersonsID)
    -> );
ERROR 1005 (HY000): Can't create table `csd2204s18`.`orders` (errno: 150 "Foreign key constraint is incorrectly formed")
MariaDB [CSD2204S18]> CREATE TABLE Orders (
    -> OrderID integer(3) NOT NULL,
    -> OrderNumber integer(3) NOT NULL,
    -> PersonID integer(3),
    -> PRIMARY KEY (OrderID),
    -> CONSTRAINT FK_PersonOrder FOREIGN KEY (PersonID)
    -> REFERENCES Persons(ID)
    -> );
Query OK, 0 rows affected (0.25 sec)

MariaDB [CSD2204S18]> SHOW create table orders;
+--------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Table  | Create Table                                                                                                                                                                                                                                                                                                      |
+--------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| orders | CREATE TABLE `orders` (
  `OrderID` int(3) NOT NULL,
  `OrderNumber` int(3) NOT NULL,
  `PersonID` int(3) DEFAULT NULL,
  PRIMARY KEY (`OrderID`),
  KEY `FK_PersonOrder` (`PersonID`),
  CONSTRAINT `FK_PersonOrder` FOREIGN KEY (`PersonID`) REFERENCES `persons` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 |
+--------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> show index from orders;
+--------+------------+----------------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+
| Table  | Non_unique | Key_name       | Seq_in_index | Column_name | Collation | Cardinality | Sub_part | Packed | Null | Index_type | Comment | Index_comment |
+--------+------------+----------------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+
| orders |          0 | PRIMARY        |            1 | OrderID     | A         |           0 |     NULL | NULL   |      | BTREE      |         |               |
| orders |          1 | FK_PersonOrder |            1 | PersonID    | A         |           0 |     NULL | NULL   | YES  | BTREE      |         |               |
+--------+------------+----------------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+
2 rows in set (0.00 sec)

MariaDB [CSD2204S18]> desc Customer;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| custID     | varchar(5)  | NO   | PRI | NULL    |       |
| name       | varchar(50) | YES  |     | NULL    |       |
| nickname   | varchar(10) | YES  |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalCode | varchar(10) | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
6 rows in set (0.06 sec)

MariaDB [CSD2204S18]> CREATE TABLE c1 AS SELECT * FROM Customer;
Query OK, 10 rows affected (0.28 sec)
Records: 10  Duplicates: 0  Warnings: 0

MariaDB [CSD2204S18]> CREATE TABLE c2 AS SELECT name,postal code FROM Customer where city = 'toronto';
ERROR 1054 (42S22): Unknown column 'postal' in 'field list'
MariaDB [CSD2204S18]> CREATE TABLE c2 AS SELECT name,postalcode FROM Customer where city = 'toronto';
Query OK, 3 rows affected (0.47 sec)
Records: 3  Duplicates: 0  Warnings: 0

MariaDB [CSD2204S18]> SELECT *from c1;
+--------+-----------------+----------+------------+------------+------+
| custID | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| C01    | ashely          | ash      | WDC        | 321200     |   34 |
| C02    | Bob Marley      | bm       | Toronto    | 100100     |   23 |
| C03    | Charlies Theron | Cher     | New York   | 120134     |   20 |
| C04    | Denial jack     | DJ       | brazil     | 341020     |   25 |
| C05    | Dona newman     | new      | toronto    | 130120     |   50 |
| C06    | eston M.        | M.       | toronto    | 201023     |   65 |
| C07    | Bobby Chacko    | chac     | new york   | 320300     |   70 |
| C08    | Ashko Charles   | AK       | USA        | 421044     |   72 |
| C09    | Tony Special    | specie   | GTA        | 418921     |   62 |
| C10    | Jack sp         | sparrow  | New jersey | 102301     |   35 |
+--------+-----------------+----------+------------+------------+------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> desc c2;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| name       | varchar(50) | YES  |     | NULL    |       |
| postalcode | varchar(10) | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

MariaDB [CSD2204S18]> select * from c2;
+-------------+------------+
| name        | postalcode |
+-------------+------------+
| Bob Marley  | 100100     |
| Dona newman | 130120     |
| eston M.    | 201023     |
+-------------+------------+
3 rows in set (0.00 sec)

MariaDB [CSD2204S18]> show tables;
+----------------------+
| Tables_in_csd2204s18 |
+----------------------+
| c1                   |
| c2                   |
| customer             |
| orders               |
| persons              |
+----------------------+
5 rows in set (0.00 sec)

MariaDB [CSD2204S18]> create table c3 LIKE customer;
Query OK, 0 rows affected (0.17 sec)

MariaDB [CSD2204S18]> desc d3;
ERROR 1146 (42S02): Table 'csd2204s18.d3' doesn't exist
MariaDB [CSD2204S18]> desc c3;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| custID     | varchar(5)  | NO   | PRI | NULL    |       |
| name       | varchar(50) | YES  |     | NULL    |       |
| nickname   | varchar(10) | YES  |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalCode | varchar(10) | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
6 rows in set (0.01 sec)

MariaDB [CSD2204S18]> INSER INTO c3 select * from Customer; 
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'INSER INTO c3 select * from Customer' at line 1
MariaDB [CSD2204S18]> INSERT INTO c3 SELECT * from Customer; 
Query OK, 10 rows affected (0.01 sec)
Records: 10  Duplicates: 0  Warnings: 0

MariaDB [CSD2204S18]> SHOW c3;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'c3' at line 1
MariaDB [CSD2204S18]> Select * from c3;
+--------+-----------------+----------+------------+------------+------+
| custID | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| C01    | ashely          | ash      | WDC        | 321200     |   34 |
| C02    | Bob Marley      | bm       | Toronto    | 100100     |   23 |
| C03    | Charlies Theron | Cher     | New York   | 120134     |   20 |
| C04    | Denial jack     | DJ       | brazil     | 341020     |   25 |
| C05    | Dona newman     | new      | toronto    | 130120     |   50 |
| C06    | eston M.        | M.       | toronto    | 201023     |   65 |
| C07    | Bobby Chacko    | chac     | new york   | 320300     |   70 |
| C08    | Ashko Charles   | AK       | USA        | 421044     |   72 |
| C09    | Tony Special    | specie   | GTA        | 418921     |   62 |
| C10    | Jack sp         | sparrow  | New jersey | 102301     |   35 |
+--------+-----------------+----------+------------+------------+------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> slect * from customer;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'slect * from customer' at line 1
MariaDB [CSD2204S18]> select * from custoomer;
ERROR 1146 (42S02): Table 'csd2204s18.custoomer' doesn't exist
MariaDB [CSD2204S18]> select * from customer;
+--------+-----------------+----------+------------+------------+------+
| custID | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| C01    | ashely          | ash      | WDC        | 321200     |   34 |
| C02    | Bob Marley      | bm       | Toronto    | 100100     |   23 |
| C03    | Charlies Theron | Cher     | New York   | 120134     |   20 |
| C04    | Denial jack     | DJ       | brazil     | 341020     |   25 |
| C05    | Dona newman     | new      | toronto    | 130120     |   50 |
| C06    | eston M.        | M.       | toronto    | 201023     |   65 |
| C07    | Bobby Chacko    | chac     | new york   | 320300     |   70 |
| C08    | Ashko Charles   | AK       | USA        | 421044     |   72 |
| C09    | Tony Special    | specie   | GTA        | 418921     |   62 |
| C10    | Jack sp         | sparrow  | New jersey | 102301     |   35 |
+--------+-----------------+----------+------------+------------+------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> alter table c3 add column country VARCHAR(100);
Query OK, 0 rows affected (0.39 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [CSD2204S18]> desc c3;
+------------+--------------+------+-----+---------+-------+
| Field      | Type         | Null | Key | Default | Extra |
+------------+--------------+------+-----+---------+-------+
| custID     | varchar(5)   | NO   | PRI | NULL    |       |
| name       | varchar(50)  | YES  |     | NULL    |       |
| nickname   | varchar(10)  | YES  |     | NULL    |       |
| city       | varchar(20)  | YES  |     | NULL    |       |
| postalCode | varchar(10)  | YES  |     | NULL    |       |
| age        | int(3)       | YES  |     | NULL    |       |
| country    | varchar(100) | YES  |     | NULL    |       |
+------------+--------------+------+-----+---------+-------+
7 rows in set (0.00 sec)

MariaDB [CSD2204S18]> alter table c3 modify column country VARCHAR(40);
Query OK, 10 rows affected (0.58 sec)
Records: 10  Duplicates: 0  Warnings: 0

MariaDB [CSD2204S18]> desc c3;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| custID     | varchar(5)  | NO   | PRI | NULL    |       |
| name       | varchar(50) | YES  |     | NULL    |       |
| nickname   | varchar(10) | YES  |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalCode | varchar(10) | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
| country    | varchar(40) | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
7 rows in set (0.00 sec)

MariaDB [CSD2204S18]> alter table c3 modify column Country VARCHAR(40);
Query OK, 0 rows affected (0.00 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [CSD2204S18]> desc c3;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| custID     | varchar(5)  | NO   | PRI | NULL    |       |
| name       | varchar(50) | YES  |     | NULL    |       |
| nickname   | varchar(10) | YES  |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalCode | varchar(10) | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
| Country    | varchar(40) | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
7 rows in set (0.00 sec)

MariaDB [CSD2204S18]> alter table c3 modify column country VARCHAR(40);
Query OK, 0 rows affected (0.00 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [CSD2204S18]> desc c3;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| custID     | varchar(5)  | NO   | PRI | NULL    |       |
| name       | varchar(50) | YES  |     | NULL    |       |
| nickname   | varchar(10) | YES  |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalCode | varchar(10) | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
| country    | varchar(40) | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
7 rows in set (0.00 sec)

MariaDB [CSD2204S18]> alter table c3 change column custId cusotmertId VARCHAR(5);
Query OK, 0 rows affected (0.05 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [CSD2204S18]> desc c3;
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| cusotmertId | varchar(5)  | NO   | PRI | NULL    |       |
| name        | varchar(50) | YES  |     | NULL    |       |
| nickname    | varchar(10) | YES  |     | NULL    |       |
| city        | varchar(20) | YES  |     | NULL    |       |
| postalCode  | varchar(10) | YES  |     | NULL    |       |
| age         | int(3)      | YES  |     | NULL    |       |
| country     | varchar(40) | YES  |     | NULL    |       |
+-------------+-------------+------+-----+---------+-------+
7 rows in set (0.00 sec)

MariaDB [CSD2204S18]> alter table c3 drop column nickname;
Query OK, 0 rows affected (0.31 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [CSD2204S18]> desc c3;
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| cusotmertId | varchar(5)  | NO   | PRI | NULL    |       |
| name        | varchar(50) | YES  |     | NULL    |       |
| city        | varchar(20) | YES  |     | NULL    |       |
| postalCode  | varchar(10) | YES  |     | NULL    |       |
| age         | int(3)      | YES  |     | NULL    |       |
| country     | varchar(40) | YES  |     | NULL    |       |
+-------------+-------------+------+-----+---------+-------+
6 rows in set (0.02 sec)

MariaDB [CSD2204S18]> 
MariaDB [CSD2204S18]> alter table c3 modify name varchar(50) NOT NULL;
Query OK, 10 rows affected (3.08 sec)
Records: 10  Duplicates: 0  Warnings: 0

MariaDB [CSD2204S18]> alter table c3 modify name VARCHAR(50) NOT NULL;
Query OK, 0 rows affected (0.00 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [CSD2204S18]> alter table c1 add primary key(custID);
Query OK, 0 rows affected (0.31 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [CSD2204S18]> desc c1;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| custID     | varchar(5)  | NO   | PRI | NULL    |       |
| name       | varchar(50) | YES  |     | NULL    |       |
| nickname   | varchar(10) | YES  |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalCode | varchar(10) | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
6 rows in set (0.00 sec)

MariaDB [CSD2204S18]> alter table c1 drop primary key(custId);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '(custId)' at line 1
MariaDB [CSD2204S18]> alter table c1 drop primarykey(custId);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '(custId)' at line 1
MariaDB [CSD2204S18]> desc c2;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| name       | varchar(50) | YES  |     | NULL    |       |
| postalcode | varchar(10) | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

MariaDB [CSD2204S18]> alter table c1 add primarykey(custId);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '(custId)' at line 1
MariaDB [CSD2204S18]> alter table c2 add primarykey(name);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '(name)' at line 1
MariaDB [CSD2204S18]> alter table c2 add primary key(name);
Query OK, 3 rows affected (0.53 sec)
Records: 3  Duplicates: 0  Warnings: 0

MariaDB [CSD2204S18]> desc c2;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| name       | varchar(50) | NO   | PRI | NULL    |       |
| postalcode | varchar(10) | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

MariaDB [CSD2204S18]> alter table c2 drop primary key(name);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '(name)' at line 1
MariaDB [CSD2204S18]> alter table c2 drop name;
Query OK, 3 rows affected (0.75 sec)
Records: 3  Duplicates: 0  Warnings: 0

MariaDB [CSD2204S18]> desc c2;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| postalcode | varchar(10) | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> alter table c2 add column name VARCHAR(50);
Query OK, 0 rows affected (0.34 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [CSD2204S18]> desc c2;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| postalcode | varchar(10) | YES  |     | NULL    |       |
| name       | varchar(50) | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

MariaDB [CSD2204S18]> alter table c2 modify column name VARCHAR(50) Primary Key;
ERROR 1062 (23000): Duplicate entry '' for key 'PRIMARY'
MariaDB [CSD2204S18]> desc c2;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| postalcode | varchar(10) | YES  |     | NULL    |       |
| name       | varchar(50) | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

MariaDB [CSD2204S18]> alter table c2 modify column name VARCHAR(50) PrimaryKey;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 1
MariaDB [CSD2204S18]> alter table c2 add contraint primaryKey(name);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'primaryKey(name)' at line 1
MariaDB [CSD2204S18]> alter table c2 add contraint primaryKey (name);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'primaryKey (name)' at line 1
MariaDB [CSD2204S18]> alter table c2 add contraint PrimaryKey (name);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'PrimaryKey (name)' at line 1
MariaDB [CSD2204S18]> desc c2;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| postalcode | varchar(10) | YES  |     | NULL    |       |
| name       | varchar(50) | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

MariaDB [CSD2204S18]> desc c1;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| custID     | varchar(5)  | NO   | PRI | NULL    |       |
| name       | varchar(50) | YES  |     | NULL    |       |
| nickname   | varchar(10) | YES  |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalCode | varchar(10) | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
6 rows in set (0.00 sec)

MariaDB [CSD2204S18]> show tables;
+----------------------+
| Tables_in_csd2204s18 |
+----------------------+
| c1                   |
| c2                   |
| c3                   |
| customer             |
| orders               |
| persons              |
+----------------------+
6 rows in set (0.00 sec)

MariaDB [CSD2204S18]> desc c3;
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| cusotmertId | varchar(5)  | NO   | PRI | NULL    |       |
| name        | varchar(50) | NO   |     | NULL    |       |
| city        | varchar(20) | YES  |     | NULL    |       |
| postalCode  | varchar(10) | YES  |     | NULL    |       |
| age         | int(3)      | YES  |     | NULL    |       |
| country     | varchar(40) | YES  |     | NULL    |       |
+-------------+-------------+------+-----+---------+-------+
6 rows in set (0.02 sec)

MariaDB [CSD2204S18]> update c3 set country='USA';
Query OK, 10 rows affected (0.03 sec)
Rows matched: 10  Changed: 10  Warnings: 0

MariaDB [CSD2204S18]> desc c3;
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| cusotmertId | varchar(5)  | NO   | PRI | NULL    |       |
| name        | varchar(50) | NO   |     | NULL    |       |
| city        | varchar(20) | YES  |     | NULL    |       |
| postalCode  | varchar(10) | YES  |     | NULL    |       |
| age         | int(3)      | YES  |     | NULL    |       |
| country     | varchar(40) | YES  |     | NULL    |       |
+-------------+-------------+------+-----+---------+-------+
6 rows in set (0.02 sec)

MariaDB [CSD2204S18]> select* from c3;
+-------------+-----------------+------------+------------+------+---------+
| cusotmertId | name            | city       | postalCode | age  | country |
+-------------+-----------------+------------+------------+------+---------+
| C01         | ashely          | WDC        | 321200     |   34 | USA     |
| C02         | Bob Marley      | Toronto    | 100100     |   23 | USA     |
| C03         | Charlies Theron | New York   | 120134     |   20 | USA     |
| C04         | Denial jack     | brazil     | 341020     |   25 | USA     |
| C05         | Dona newman     | toronto    | 130120     |   50 | USA     |
| C06         | eston M.        | toronto    | 201023     |   65 | USA     |
| C07         | Bobby Chacko    | new york   | 320300     |   70 | USA     |
| C08         | Ashko Charles   | USA        | 421044     |   72 | USA     |
| C09         | Tony Special    | GTA        | 418921     |   62 | USA     |
| C10         | Jack sp         | New jersey | 102301     |   35 | USA     |
+-------------+-----------------+------------+------------+------+---------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> update c3 set country='CANADA'where city ='toronto' || city='GTA';
Query OK, 4 rows affected (0.05 sec)
Rows matched: 4  Changed: 4  Warnings: 0

MariaDB [CSD2204S18]> select * from c3;
+-------------+-----------------+------------+------------+------+---------+
| cusotmertId | name            | city       | postalCode | age  | country |
+-------------+-----------------+------------+------------+------+---------+
| C01         | ashely          | WDC        | 321200     |   34 | USA     |
| C02         | Bob Marley      | Toronto    | 100100     |   23 | CANADA  |
| C03         | Charlies Theron | New York   | 120134     |   20 | USA     |
| C04         | Denial jack     | brazil     | 341020     |   25 | USA     |
| C05         | Dona newman     | toronto    | 130120     |   50 | CANADA  |
| C06         | eston M.        | toronto    | 201023     |   65 | CANADA  |
| C07         | Bobby Chacko    | new york   | 320300     |   70 | USA     |
| C08         | Ashko Charles   | USA        | 421044     |   72 | USA     |
| C09         | Tony Special    | GTA        | 418921     |   62 | CANADA  |
| C10         | Jack sp         | New jersey | 102301     |   35 | USA     |
+-------------+-----------------+------------+------------+------+---------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> update c3 set country='CANADA'where city IN('toronto','GTA');
Query OK, 0 rows affected (0.05 sec)
Rows matched: 4  Changed: 0  Warnings: 0

MariaDB [CSD2204S18]> update c3 set country='South america' where city IN('brazil');
Query OK, 1 row affected (0.03 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [CSD2204S18]> desc c3;
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| cusotmertId | varchar(5)  | NO   | PRI | NULL    |       |
| name        | varchar(50) | NO   |     | NULL    |       |
| city        | varchar(20) | YES  |     | NULL    |       |
| postalCode  | varchar(10) | YES  |     | NULL    |       |
| age         | int(3)      | YES  |     | NULL    |       |
| country     | varchar(40) | YES  |     | NULL    |       |
+-------------+-------------+------+-----+---------+-------+
6 rows in set (0.00 sec)

MariaDB [CSD2204S18]> select * from c3;
+-------------+-----------------+------------+------------+------+---------------+
| cusotmertId | name            | city       | postalCode | age  | country       |
+-------------+-----------------+------------+------------+------+---------------+
| C01         | ashely          | WDC        | 321200     |   34 | USA           |
| C02         | Bob Marley      | Toronto    | 100100     |   23 | CANADA        |
| C03         | Charlies Theron | New York   | 120134     |   20 | USA           |
| C04         | Denial jack     | brazil     | 341020     |   25 | South america |
| C05         | Dona newman     | toronto    | 130120     |   50 | CANADA        |
| C06         | eston M.        | toronto    | 201023     |   65 | CANADA        |
| C07         | Bobby Chacko    | new york   | 320300     |   70 | USA           |
| C08         | Ashko Charles   | USA        | 421044     |   72 | USA           |
| C09         | Tony Special    | GTA        | 418921     |   62 | CANADA        |
| C10         | Jack sp         | New jersey | 102301     |   35 | USA           |
+-------------+-----------------+------------+------------+------+---------------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> select * from c2;
+------------+------+
| postalcode | name |
+------------+------+
| 100100     | NULL |
| 130120     | NULL |
| 201023     | NULL |
+------------+------+
3 rows in set (0.00 sec)

MariaDB [CSD2204S18]> delete from c2 where name LIKE 'null%';
Query OK, 0 rows affected (0.00 sec)

MariaDB [CSD2204S18]> drop table c2;
Query OK, 0 rows affected (0.16 sec)

MariaDB [CSD2204S18]> show tables;
+----------------------+
| Tables_in_csd2204s18 |
+----------------------+
| c1                   |
| c3                   |
| customer             |
| orders               |
| persons              |
+----------------------+
5 rows in set (0.00 sec)

MariaDB [CSD2204S18]> delete from c2 where name IS NULL;
ERROR 1146 (42S02): Table 'csd2204s18.c2' doesn't exist
MariaDB [CSD2204S18]> select * from c1;
+--------+-----------------+----------+------------+------------+------+
| custID | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| C01    | ashely          | ash      | WDC        | 321200     |   34 |
| C02    | Bob Marley      | bm       | Toronto    | 100100     |   23 |
| C03    | Charlies Theron | Cher     | New York   | 120134     |   20 |
| C04    | Denial jack     | DJ       | brazil     | 341020     |   25 |
| C05    | Dona newman     | new      | toronto    | 130120     |   50 |
| C06    | eston M.        | M.       | toronto    | 201023     |   65 |
| C07    | Bobby Chacko    | chac     | new york   | 320300     |   70 |
| C08    | Ashko Charles   | AK       | USA        | 421044     |   72 |
| C09    | Tony Special    | specie   | GTA        | 418921     |   62 |
| C10    | Jack sp         | sparrow  | New jersey | 102301     |   35 |
+--------+-----------------+----------+------------+------------+------+
10 rows in set (0.02 sec)

MariaDB [CSD2204S18]> update c1 custID where age>50;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'where age>50' at line 1
MariaDB [CSD2204S18]> slect * from c1 where custId is not null;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'slect * from c1 where custId is not null' at line 1
MariaDB [CSD2204S18]> select * from c1 where custId is not null;
+--------+-----------------+----------+------------+------------+------+
| custID | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| C01    | ashely          | ash      | WDC        | 321200     |   34 |
| C02    | Bob Marley      | bm       | Toronto    | 100100     |   23 |
| C03    | Charlies Theron | Cher     | New York   | 120134     |   20 |
| C04    | Denial jack     | DJ       | brazil     | 341020     |   25 |
| C05    | Dona newman     | new      | toronto    | 130120     |   50 |
| C06    | eston M.        | M.       | toronto    | 201023     |   65 |
| C07    | Bobby Chacko    | chac     | new york   | 320300     |   70 |
| C08    | Ashko Charles   | AK       | USA        | 421044     |   72 |
| C09    | Tony Special    | specie   | GTA        | 418921     |   62 |
| C10    | Jack sp         | sparrow  | New jersey | 102301     |   35 |
+--------+-----------------+----------+------------+------------+------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> desc c1;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| custID     | varchar(5)  | NO   | PRI | NULL    |       |
| name       | varchar(50) | YES  |     | NULL    |       |
| nickname   | varchar(10) | YES  |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalCode | varchar(10) | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
6 rows in set (0.00 sec)

MariaDB [CSD2204S18]> alter table c1 modify column age FLOAT(10,2);
Query OK, 10 rows affected (0.56 sec)
Records: 10  Duplicates: 0  Warnings: 0

MariaDB [CSD2204S18]> exit
