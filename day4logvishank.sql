MariaDB [(none)]> USE CSD2204S18
ERROR 1049 (42000): Unknown database 'csd2204s18'
MariaDB [(none)]> USE CSD2204S18
ERROR 1049 (42000): Unknown database 'csd2204s18'
MariaDB [(none)]> SHOW DATABASE;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'DATABASE' at line 1
MariaDB [(none)]> CREATE TABLE Customer(
    -> custId VARCHAR(5) PRIMARY KEY,
    -> name VARCHAR(50),
    -> nickname VARCHAR(10),
    -> city VARCHAR(20),
    -> postalCode VARCHAR(10),
    -> age INTEGER(3));
ERROR 1046 (3D000): No database selected
MariaDB [(none)]> CREATE DATABASE CSD2204S18;
Query OK, 1 row affected (0.08 sec)

MariaDB [(none)]> SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| csd2204s18         |
| csd2204s2018       |
| information_schema |
| mysql              |
| performance_schema |
| phpmyadmin         |
| test               |
+--------------------+
7 rows in set (0.00 sec)

MariaDB [(none)]> USE CSD2204S18
Database changed
MariaDB [CSD2204S18]> SHOW TABLES;
Empty set (0.05 sec)

MariaDB [CSD2204S18]> CREATE TABLE Customer(
    -> custID VARCHAR(5) PRIMARY KEY,
    -> name VARCHAR(50),
    -> nickname VARCHAR(10),
    -> city VARCHAR(20),
    -> postalCode VARCHAR(10),
    -> age INTEGER(3));
Query OK, 0 rows affected (0.38 sec)

MariaDB [CSD2204S18]> SHOW TABLES;
+----------------------+
| Tables_in_csd2204s18 |
+----------------------+
| customer             |
+----------------------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT *FROM Customer;
Empty set (0.00 sec)

MariaDB [CSD2204S18]> DESC Customer;
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
6 rows in set (0.05 sec)

MariaDB [CSD2204S18]> INSERT Customer VALUES('C01','ashely','ash','wdc',321200',34);
    '> 
    '> 
    '> ';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '',34);


'' at line 1
MariaDB [CSD2204S18]> INSERT INTO Customer VALUES('C01','ashely','ash','WDC','321200',34);
Query OK, 1 row affected (0.07 sec)

MariaDB [CSD2204S18]> INSERT INTO Customer VALUES('C02','Bob Marley','bm','Toronto','100100',23);
Query OK, 1 row affected (0.01 sec)

MariaDB [CSD2204S18]> INSERT INTO Customer VALUES('C03','Charlies Theron','Cher','New York','120134',20);
Query OK, 1 row affected (0.05 sec)

MariaDB [CSD2204S18]> INSERT INTO Customer VALUES('C03','Charlies Theron','Cher','New York','341020',25);
ERROR 1062 (23000): Duplicate entry 'C03' for key 'PRIMARY'
MariaDB [CSD2204S18]> INSERT INTO Customer VALUES('C04','Denial jack','DJ','brazil','341020',25);
Query OK, 1 row affected (0.03 sec)

MariaDB [CSD2204S18]> INSERT INTO Customer VALUES('C05','Dona newman','new','toronto','130120',50);
Query OK, 1 row affected (0.03 sec)

MariaDB [CSD2204S18]> INSERT INTO Customer VALUES('C06','eston M.','M.','toronto','201023',65);
Query OK, 1 row affected (0.02 sec)

MariaDB [CSD2204S18]> INSERT INTO Customer VALUES('C07','Bobby Chacko','chac','new york','320300',70);
Query OK, 1 row affected (0.00 sec)

MariaDB [CSD2204S18]> INSERT INTO Customer VALUES('C08','Ashko Charles','AK','USA','421044',72);
Query OK, 1 row affected (0.05 sec)

MariaDB [CSD2204S18]> INSERT INTO Customer VALUES('C09','Tony Special','specie','GTA','418921',62);
Query OK, 1 row affected (0.03 sec)

MariaDB [CSD2204S18]> INSERT INTO Customer VALUES('C10','Jack sp','sparrow','New jersey','102301',35);
Query OK, 1 row affected (0.02 sec)

MariaDB [CSD2204S18]> SELECT *FROM Customer;
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

MariaDB [CSD2204S18]> SELECT name,nickname FROM CUstomer;
+-----------------+----------+
| name            | nickname |
+-----------------+----------+
| ashely          | ash      |
| Bob Marley      | bm       |
| Charlies Theron | Cher     |
| Denial jack     | DJ       |
| Dona newman     | new      |
| eston M.        | M.       |
| Bobby Chacko    | chac     |
| Ashko Charles   | AK       |
| Tony Special    | specie   |
| Jack sp         | sparrow  |
+-----------------+----------+
10 rows in set (0.02 sec)

MariaDB [CSD2204S18]> SELECT city,postalCode FROM Customer;
+------------+------------+
| city       | postalCode |
+------------+------------+
| WDC        | 321200     |
| Toronto    | 100100     |
| New York   | 120134     |
| brazil     | 341020     |
| toronto    | 130120     |
| toronto    | 201023     |
| new york   | 320300     |
| USA        | 421044     |
| GTA        | 418921     |
| New jersey | 102301     |
+------------+------------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT *FROM Customer Where name='ashley';
Empty set (0.06 sec)

MariaDB [CSD2204S18]> SELECT *FROM Customer WHERE name='ashely';
+--------+--------+----------+------+------------+------+
| custID | name   | nickname | city | postalCode | age  |
+--------+--------+----------+------+------------+------+
| C01    | ashely | ash      | WDC  | 321200     |   34 |
+--------+--------+----------+------+------------+------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT *FROM Customer WHERE nickname='AK';
+--------+---------------+----------+------+------------+------+
| custID | name          | nickname | city | postalCode | age  |
+--------+---------------+----------+------+------------+------+
| C08    | Ashko Charles | AK       | USA  | 421044     |   72 |
+--------+---------------+----------+------+------------+------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT *FROM Customer WHERE name='eston M.';
+--------+----------+----------+---------+------------+------+
| custID | name     | nickname | city    | postalCode | age  |
+--------+----------+----------+---------+------------+------+
| C06    | eston M. | M.       | toronto | 201023     |   65 |
+--------+----------+----------+---------+------------+------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT *FROM Customer Where city !='toronto';
+--------+-----------------+----------+------------+------------+------+
| custID | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| C01    | ashely          | ash      | WDC        | 321200     |   34 |
| C03    | Charlies Theron | Cher     | New York   | 120134     |   20 |
| C04    | Denial jack     | DJ       | brazil     | 341020     |   25 |
| C07    | Bobby Chacko    | chac     | new york   | 320300     |   70 |
| C08    | Ashko Charles   | AK       | USA        | 421044     |   72 |
| C09    | Tony Special    | specie   | GTA        | 418921     |   62 |
| C10    | Jack sp         | sparrow  | New jersey | 102301     |   35 |
+--------+-----------------+----------+------------+------------+------+
7 rows in set (0.05 sec)

MariaDB [CSD2204S18]> SELECT *FROM Customer WHERE age<50;
+--------+-----------------+----------+------------+------------+------+
| custID | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| C01    | ashely          | ash      | WDC        | 321200     |   34 |
| C02    | Bob Marley      | bm       | Toronto    | 100100     |   23 |
| C03    | Charlies Theron | Cher     | New York   | 120134     |   20 |
| C04    | Denial jack     | DJ       | brazil     | 341020     |   25 |
| C10    | Jack sp         | sparrow  | New jersey | 102301     |   35 |
+--------+-----------------+----------+------------+------------+------+
5 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT *FROM Customer where name >'ashley;
    '> ;
    '> ';
+--------+-----------------+----------+------------+------------+------+
| custID | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| C02    | Bob Marley      | bm       | Toronto    | 100100     |   23 |
| C03    | Charlies Theron | Cher     | New York   | 120134     |   20 |
| C04    | Denial jack     | DJ       | brazil     | 341020     |   25 |
| C05    | Dona newman     | new      | toronto    | 130120     |   50 |
| C06    | eston M.        | M.       | toronto    | 201023     |   65 |
| C07    | Bobby Chacko    | chac     | new york   | 320300     |   70 |
| C09    | Tony Special    | specie   | GTA        | 418921     |   62 |
| C10    | Jack sp         | sparrow  | New jersey | 102301     |   35 |
+--------+-----------------+----------+------------+------------+------+
8 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT *FROM Customer where name <'dona';
+--------+-----------------+----------+----------+------------+------+
| custID | name            | nickname | city     | postalCode | age  |
+--------+-----------------+----------+----------+------------+------+
| C01    | ashely          | ash      | WDC      | 321200     |   34 |
| C02    | Bob Marley      | bm       | Toronto  | 100100     |   23 |
| C03    | Charlies Theron | Cher     | New York | 120134     |   20 |
| C04    | Denial jack     | DJ       | brazil   | 341020     |   25 |
| C07    | Bobby Chacko    | chac     | new york | 320300     |   70 |
| C08    | Ashko Charles   | AK       | USA      | 421044     |   72 |
+--------+-----------------+----------+----------+------------+------+
6 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT name,city FROM Customer where name = 'ashley' or city ='toronto';
+-------------+---------+
| name        | city    |
+-------------+---------+
| Bob Marley  | Toronto |
| Dona newman | toronto |
| eston M.    | toronto |
+-------------+---------+
3 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT name,city FROM Customer where name='ashley' ||city='toronto';
+-------------+---------+
| name        | city    |
+-------------+---------+
| Bob Marley  | Toronto |
| Dona newman | toronto |
| eston M.    | toronto |
+-------------+---------+
3 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT name,city FROM Customer where city ='New york' || city='toronto';
+-----------------+----------+
| name            | city     |
+-----------------+----------+
| Bob Marley      | Toronto  |
| Charlies Theron | New York |
| Dona newman     | toronto  |
| eston M.        | toronto  |
| Bobby Chacko    | new york |
+-----------------+----------+
5 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT name,age FROM Customer WHERE city ='toronto' || age>50;
+---------------+------+
| name          | age  |
+---------------+------+
| Bob Marley    |   23 |
| Dona newman   |   50 |
| eston M.      |   65 |
| Bobby Chacko  |   70 |
| Ashko Charles |   72 |
| Tony Special  |   62 |
+---------------+------+
6 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT COUNT(*) "NO of customers in toronto" FROM Customers WHERE city ='TORONTO';
ERROR 1146 (42S02): Table 'csd2204s18.customers' doesn't exist
MariaDB [CSD2204S18]> SELECT COUNT(*) "NO of customers in toronto" FROM CUStomer WHERE city="toronto';
    "> ';
    "> ";
+----------------------------+
| NO of customers in toronto |
+----------------------------+
|                          0 |
+----------------------------+
1 row in set (0.01 sec)

MariaDB [CSD2204S18]> SELECT COUNT(*) "No of customer in toronto" FROM Customer WHERE city='toronto';
+---------------------------+
| No of customer in toronto |
+---------------------------+
|                         3 |
+---------------------------+
1 row in set (0.02 sec)

MariaDB [CSD2204S18]> SELECT COUNT(*) "no of customer with age above 50" FROM customer WHERE age > 50;
+----------------------------------+
| no of customer with age above 50 |
+----------------------------------+
|                                4 |
+----------------------------------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM Customer WHERE age BETWEEN 30 AND 70;
+--------+--------------+----------+------------+------------+------+
| custID | name         | nickname | city       | postalCode | age  |
+--------+--------------+----------+------------+------------+------+
| C01    | ashely       | ash      | WDC        | 321200     |   34 |
| C05    | Dona newman  | new      | toronto    | 130120     |   50 |
| C06    | eston M.     | M.       | toronto    | 201023     |   65 |
| C07    | Bobby Chacko | chac     | new york   | 320300     |   70 |
| C09    | Tony Special | specie   | GTA        | 418921     |   62 |
| C10    | Jack sp      | sparrow  | New jersey | 102301     |   35 |
+--------+--------------+----------+------------+------------+------+
6 rows in set (0.01 sec)

MariaDB [CSD2204S18]> SELECT * FROM Customer WHERE age NOT BETWEEN 30 AND 70;
+--------+-----------------+----------+----------+------------+------+
| custID | name            | nickname | city     | postalCode | age  |
+--------+-----------------+----------+----------+------------+------+
| C02    | Bob Marley      | bm       | Toronto  | 100100     |   23 |
| C03    | Charlies Theron | Cher     | New York | 120134     |   20 |
| C04    | Denial jack     | DJ       | brazil   | 341020     |   25 |
| C08    | Ashko Charles   | AK       | USA      | 421044     |   72 |
+--------+-----------------+----------+----------+------------+------+
4 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM Customer WHERE NOT age BETWEEN 30 AND 70;
+--------+-----------------+----------+----------+------------+------+
| custID | name            | nickname | city     | postalCode | age  |
+--------+-----------------+----------+----------+------------+------+
| C02    | Bob Marley      | bm       | Toronto  | 100100     |   23 |
| C03    | Charlies Theron | Cher     | New York | 120134     |   20 |
| C04    | Denial jack     | DJ       | brazil   | 341020     |   25 |
| C08    | Ashko Charles   | AK       | USA      | 421044     |   72 |
+--------+-----------------+----------+----------+------------+------+
4 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM Customer where age>30 AND age<70; 
+--------+--------------+----------+------------+------------+------+
| custID | name         | nickname | city       | postalCode | age  |
+--------+--------------+----------+------------+------------+------+
| C01    | ashely       | ash      | WDC        | 321200     |   34 |
| C05    | Dona newman  | new      | toronto    | 130120     |   50 |
| C06    | eston M.     | M.       | toronto    | 201023     |   65 |
| C09    | Tony Special | specie   | GTA        | 418921     |   62 |
| C10    | Jack sp      | sparrow  | New jersey | 102301     |   35 |
+--------+--------------+----------+------------+------------+------+
5 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT name,max(age) FROM Customer;
+--------+----------+
| name   | max(age) |
+--------+----------+
| ashely |       72 |
+--------+----------+
1 row in set (0.03 sec)

MariaDB [CSD2204S18]> SELECT name,min(age) FROM customer;
+--------+----------+
| name   | min(age) |
+--------+----------+
| ashely |       20 |
+--------+----------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT name,avg(age) FROM customer;
+--------+----------+
| name   | avg(age) |
+--------+----------+
| ashely |  45.6000 |
+--------+----------+
1 row in set (0.01 sec)

MariaDB [CSD2204S18]> SELECT *from Customer WHERE name LIKE 'b%';
+--------+--------------+----------+----------+------------+------+
| custID | name         | nickname | city     | postalCode | age  |
+--------+--------------+----------+----------+------------+------+
| C02    | Bob Marley   | bm       | Toronto  | 100100     |   23 |
| C07    | Bobby Chacko | chac     | new york | 320300     |   70 |
+--------+--------------+----------+----------+------------+------+
2 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT *from Customer WHERE name NOT LIKE 'b%';
+--------+-----------------+----------+------------+------------+------+
| custID | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| C01    | ashely          | ash      | WDC        | 321200     |   34 |
| C03    | Charlies Theron | Cher     | New York   | 120134     |   20 |
| C04    | Denial jack     | DJ       | brazil     | 341020     |   25 |
| C05    | Dona newman     | new      | toronto    | 130120     |   50 |
| C06    | eston M.        | M.       | toronto    | 201023     |   65 |
| C08    | Ashko Charles   | AK       | USA        | 421044     |   72 |
| C09    | Tony Special    | specie   | GTA        | 418921     |   62 |
| C10    | Jack sp         | sparrow  | New jersey | 102301     |   35 |
+--------+-----------------+----------+------------+------------+------+
8 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT *FROM CUSTOMER WHERE city NOT LIKE 'n%';
+--------+---------------+----------+---------+------------+------+
| custID | name          | nickname | city    | postalCode | age  |
+--------+---------------+----------+---------+------------+------+
| C01    | ashely        | ash      | WDC     | 321200     |   34 |
| C02    | Bob Marley    | bm       | Toronto | 100100     |   23 |
| C04    | Denial jack   | DJ       | brazil  | 341020     |   25 |
| C05    | Dona newman   | new      | toronto | 130120     |   50 |
| C06    | eston M.      | M.       | toronto | 201023     |   65 |
| C08    | Ashko Charles | AK       | USA     | 421044     |   72 |
| C09    | Tony Special  | specie   | GTA     | 418921     |   62 |
+--------+---------------+----------+---------+------------+------+
7 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT *FROM CUSTOMER WHERE city LIKE 'n%';
+--------+-----------------+----------+------------+------------+------+
| custID | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| C03    | Charlies Theron | Cher     | New York   | 120134     |   20 |
| C07    | Bobby Chacko    | chac     | new york   | 320300     |   70 |
| C10    | Jack sp         | sparrow  | New jersey | 102301     |   35 |
+--------+-----------------+----------+------------+------------+------+
3 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT *FROM CUSTOMER WHERE name like '__n%';
+--------+--------------+----------+---------+------------+------+
| custID | name         | nickname | city    | postalCode | age  |
+--------+--------------+----------+---------+------------+------+
| C04    | Denial jack  | DJ       | brazil  | 341020     |   25 |
| C05    | Dona newman  | new      | toronto | 130120     |   50 |
| C09    | Tony Special | specie   | GTA     | 418921     |   62 |
+--------+--------------+----------+---------+------------+------+
3 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT *FROM CUSTOMER WHERE name like '__n_a%';
+--------+-------------+----------+--------+------------+------+
| custID | name        | nickname | city   | postalCode | age  |
+--------+-------------+----------+--------+------------+------+
| C04    | Denial jack | DJ       | brazil | 341020     |   25 |
+--------+-------------+----------+--------+------------+------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT *FROM CUSTOMER WHERE limit 2';
    '> ;
    '> '
    -> ';
    '> ;
    '> 
    '> ';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'limit 2';
;
'
';
;

'' at line 1
MariaDB [CSD2204S18]> SELECT *FROM CUSTOMER WHERE limit 2;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'limit 2' at line 1
MariaDB [CSD2204S18]> SELECT *FROM CUSTOMER WHERE LIMIT 2;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'LIMIT 2' at line 1
MariaDB [CSD2204S18]> SELECT *FROM Customer WHERE city IN('Toronto','GTA','USA'.'WDC');
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '.'WDC')' at line 1
MariaDB [CSD2204S18]> SELECT *FROM Customer WHERE city IN ('Toronto','GTA','USA'.'WDC');
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '.'WDC')' at line 1
MariaDB [CSD2204S18]> SELECT * FROM Customer WHERE city IN ('Toronto','GTA','USA','WDC');
+--------+---------------+----------+---------+------------+------+
| custID | name          | nickname | city    | postalCode | age  |
+--------+---------------+----------+---------+------------+------+
| C01    | ashely        | ash      | WDC     | 321200     |   34 |
| C02    | Bob Marley    | bm       | Toronto | 100100     |   23 |
| C05    | Dona newman   | new      | toronto | 130120     |   50 |
| C06    | eston M.      | M.       | toronto | 201023     |   65 |
| C08    | Ashko Charles | AK       | USA     | 421044     |   72 |
| C09    | Tony Special  | specie   | GTA     | 418921     |   62 |
+--------+---------------+----------+---------+------------+------+
6 rows in set (0.02 sec)

MariaDB [CSD2204S18]> SELECT *FROM Customer LIMT 2;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '2' at line 1
MariaDB [CSD2204S18]> SELECT *FROM Customer LIMIT 2;
+--------+------------+----------+---------+------------+------+
| custID | name       | nickname | city    | postalCode | age  |
+--------+------------+----------+---------+------------+------+
| C01    | ashely     | ash      | WDC     | 321200     |   34 |
| C02    | Bob Marley | bm       | Toronto | 100100     |   23 |
+--------+------------+----------+---------+------------+------+
2 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT *FROM customer where age IN(20'25'30'40);
    '> ';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near ''25'30'40);
'' at line 1
MariaDB [CSD2204S18]> SELECT *FROM customer where age IN(20,25,30,40);
+--------+-----------------+----------+----------+------------+------+
| custID | name            | nickname | city     | postalCode | age  |
+--------+-----------------+----------+----------+------------+------+
| C03    | Charlies Theron | Cher     | New York | 120134     |   20 |
| C04    | Denial jack     | DJ       | brazil   | 341020     |   25 |
+--------+-----------------+----------+----------+------------+------+
2 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT *FROM customer where age  not IN(20,25,30,40);
+--------+---------------+----------+------------+------------+------+
| custID | name          | nickname | city       | postalCode | age  |
+--------+---------------+----------+------------+------------+------+
| C01    | ashely        | ash      | WDC        | 321200     |   34 |
| C02    | Bob Marley    | bm       | Toronto    | 100100     |   23 |
| C05    | Dona newman   | new      | toronto    | 130120     |   50 |
| C06    | eston M.      | M.       | toronto    | 201023     |   65 |
| C07    | Bobby Chacko  | chac     | new york   | 320300     |   70 |
| C08    | Ashko Charles | AK       | USA        | 421044     |   72 |
| C09    | Tony Special  | specie   | GTA        | 418921     |   62 |
| C10    | Jack sp       | sparrow  | New jersey | 102301     |   35 |
+--------+---------------+----------+------------+------------+------+
8 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT *from customer where city IN('toronto','gta','usa','wdc');
+--------+---------------+----------+---------+------------+------+
| custID | name          | nickname | city    | postalCode | age  |
+--------+---------------+----------+---------+------------+------+
| C01    | ashely        | ash      | WDC     | 321200     |   34 |
| C02    | Bob Marley    | bm       | Toronto | 100100     |   23 |
| C05    | Dona newman   | new      | toronto | 130120     |   50 |
| C06    | eston M.      | M.       | toronto | 201023     |   65 |
| C08    | Ashko Charles | AK       | USA     | 421044     |   72 |
| C09    | Tony Special  | specie   | GTA     | 418921     |   62 |
+--------+---------------+----------+---------+------------+------+
6 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT DISTINCT(city) 'Unique Cities' FROM Customer;
+---------------+
| Unique Cities |
+---------------+
| WDC           |
| Toronto       |
| New York      |
| brazil        |
| USA           |
| GTA           |
| New jersey    |
+---------------+
7 rows in set (0.02 sec)

MariaDB [CSD2204S18]> SELECT DISTINCT(city) AS 'Unique Cities' FROM Customer;
+---------------+
| Unique Cities |
+---------------+
| WDC           |
| Toronto       |
| New York      |
| brazil        |
| USA           |
| GTA           |
| New jersey    |
+---------------+
7 rows in set (0.01 sec)

MariaDB [CSD2204S18]> SELECT COUNT(DISTINCT (city)) AS 'Unique Cities' FROM Customer;
+---------------+
| Unique Cities |
+---------------+
|             7 |
+---------------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM Customer by name;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'by name' at line 1
MariaDB [CSD2204S18]> SELECT * FROM Customer ORDER by name;
+--------+-----------------+----------+------------+------------+------+
| custID | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| C01    | ashely          | ash      | WDC        | 321200     |   34 |
| C08    | Ashko Charles   | AK       | USA        | 421044     |   72 |
| C02    | Bob Marley      | bm       | Toronto    | 100100     |   23 |
| C07    | Bobby Chacko    | chac     | new york   | 320300     |   70 |
| C03    | Charlies Theron | Cher     | New York   | 120134     |   20 |
| C04    | Denial jack     | DJ       | brazil     | 341020     |   25 |
| C05    | Dona newman     | new      | toronto    | 130120     |   50 |
| C06    | eston M.        | M.       | toronto    | 201023     |   65 |
| C10    | Jack sp         | sparrow  | New jersey | 102301     |   35 |
| C09    | Tony Special    | specie   | GTA        | 418921     |   62 |
+--------+-----------------+----------+------------+------------+------+
10 rows in set (0.01 sec)

MariaDB [CSD2204S18]> SELECT * FROM Customer ORDER by name DESC;
+--------+-----------------+----------+------------+------------+------+
| custID | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| C09    | Tony Special    | specie   | GTA        | 418921     |   62 |
| C10    | Jack sp         | sparrow  | New jersey | 102301     |   35 |
| C06    | eston M.        | M.       | toronto    | 201023     |   65 |
| C05    | Dona newman     | new      | toronto    | 130120     |   50 |
| C04    | Denial jack     | DJ       | brazil     | 341020     |   25 |
| C03    | Charlies Theron | Cher     | New York   | 120134     |   20 |
| C07    | Bobby Chacko    | chac     | new york   | 320300     |   70 |
| C02    | Bob Marley      | bm       | Toronto    | 100100     |   23 |
| C08    | Ashko Charles   | AK       | USA        | 421044     |   72 |
| C01    | ashely          | ash      | WDC        | 321200     |   34 |
+--------+-----------------+----------+------------+------------+------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM Customer ORDER by name ASC;
+--------+-----------------+----------+------------+------------+------+
| custID | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| C01    | ashely          | ash      | WDC        | 321200     |   34 |
| C08    | Ashko Charles   | AK       | USA        | 421044     |   72 |
| C02    | Bob Marley      | bm       | Toronto    | 100100     |   23 |
| C07    | Bobby Chacko    | chac     | new york   | 320300     |   70 |
| C03    | Charlies Theron | Cher     | New York   | 120134     |   20 |
| C04    | Denial jack     | DJ       | brazil     | 341020     |   25 |
| C05    | Dona newman     | new      | toronto    | 130120     |   50 |
| C06    | eston M.        | M.       | toronto    | 201023     |   65 |
| C10    | Jack sp         | sparrow  | New jersey | 102301     |   35 |
| C09    | Tony Special    | specie   | GTA        | 418921     |   62 |
+--------+-----------------+----------+------------+------------+------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM Customer ORDER by name DESC LIMIT 1;
+--------+--------------+----------+------+------------+------+
| custID | name         | nickname | city | postalCode | age  |
+--------+--------------+----------+------+------------+------+
| C09    | Tony Special | specie   | GTA  | 418921     |   62 |
+--------+--------------+----------+------+------------+------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM Customer ORDER by age DESC LIMIT 1;
+--------+---------------+----------+------+------------+------+
| custID | name          | nickname | city | postalCode | age  |
+--------+---------------+----------+------+------------+------+
| C08    | Ashko Charles | AK       | USA  | 421044     |   72 |
+--------+---------------+----------+------+------------+------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * (FROM Customer ORDER by age DESC LIMIT 2)AS t ORDER BY age ASC LIMIT 1;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '(FROM Customer ORDER by age DESC LIMIT 2)AS t ORDER BY age ASC LIMIT 1' at line 1
MariaDB [CSD2204S18]> SELECT * FROM (SELECT * FROM Customer ORDER by age DESC LIMIT 2)AS t ORDER BY age ASC LIMIT 1;
+--------+--------------+----------+----------+------------+------+
| custID | name         | nickname | city     | postalCode | age  |
+--------+--------------+----------+----------+------------+------+
| C07    | Bobby Chacko | chac     | new york | 320300     |   70 |
+--------+--------------+----------+----------+------------+------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM (SELECT * FROM Customer ORDER by age asc LIMIT 2)AS t ORDER BY age DESC LIMIT 1;
+--------+------------+----------+---------+------------+------+
| custID | name       | nickname | city    | postalCode | age  |
+--------+------------+----------+---------+------------+------+
| C02    | Bob Marley | bm       | Toronto | 100100     |   23 |
+--------+------------+----------+---------+------------+------+
1 row in set (0.01 sec)

MariaDB [CSD2204S18]>  SELECT max(age)+10*20;
ERROR 1054 (42S22): Unknown column 'age' in 'field list'
MariaDB [CSD2204S18]>  SELECT max(age)+10*20 from customer;
+----------------+
| max(age)+10*20 |
+----------------+
|            272 |
+----------------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT 10+20 ;
+-------+
| 10+20 |
+-------+
|    30 |
+-------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT 10+20 AS t;
+----+
| t  |
+----+
| 30 |
+----+
1 row in set (0.03 sec)

MariaDB [CSD2204S18]> exit
