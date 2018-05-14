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
10 rows in set (0.05 sec)

MariaDB [CSD2204S18]> slect * from customer ORF
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'slect * from customer ORF' at line 1
MariaDB [CSD2204S18]> select * from customer ORDER BY name;
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

MariaDB [CSD2204S18]> select * from customer ORDER BY name DESC,city ASC;
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

MariaDB [CSD2204S18]> select* from customer;
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

MariaDB [CSD2204S18]> select * from customer ORDER BY custID DESC LIMIT 3;
+--------+---------------+----------+------------+------------+------+
| custID | name          | nickname | city       | postalCode | age  |
+--------+---------------+----------+------------+------------+------+
| C10    | Jack sp       | sparrow  | New jersey | 102301     |   35 |
| C09    | Tony Special  | specie   | GTA        | 418921     |   62 |
| C08    | Ashko Charles | AK       | USA        | 421044     |   72 |
+--------+---------------+----------+------------+------------+------+
3 rows in set (0.00 sec)

MariaDB [CSD2204S18]> select * from (select * from customer ORDER BY custId DESC LIMIT 3) AS t ORDER BY ASC LIMIT 3; 
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'ASC LIMIT 3' at line 1
MariaDB [CSD2204S18]> select * from (select * from customer ORDER BY custId DESC LIMIT 3) AS t ORDER BY custID ASC LIMIT 3; 
+--------+---------------+----------+------------+------------+------+
| custID | name          | nickname | city       | postalCode | age  |
+--------+---------------+----------+------------+------------+------+
| C08    | Ashko Charles | AK       | USA        | 421044     |   72 |
| C09    | Tony Special  | specie   | GTA        | 418921     |   62 |
| C10    | Jack sp       | sparrow  | New jersey | 102301     |   35 |
+--------+---------------+----------+------------+------------+------+
3 rows in set (0.00 sec)

MariaDB [CSD2204S18]> selecct * from customer group by city;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'selecct * from customer group by city' at line 1
MariaDB [CSD2204S18]> select * from customer group by city;
+--------+-----------------+----------+------------+------------+------+
| custID | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| C04    | Denial jack     | DJ       | brazil     | 341020     |   25 |
| C09    | Tony Special    | specie   | GTA        | 418921     |   62 |
| C10    | Jack sp         | sparrow  | New jersey | 102301     |   35 |
| C03    | Charlies Theron | Cher     | New York   | 120134     |   20 |
| C02    | Bob Marley      | bm       | Toronto    | 100100     |   23 |
| C08    | Ashko Charles   | AK       | USA        | 421044     |   72 |
| C01    | ashely          | ash      | WDC        | 321200     |   34 |
+--------+-----------------+----------+------------+------------+------+
7 rows in set (0.00 sec)

MariaDB [CSD2204S18]> select city from customer group by city;
+------------+
| city       |
+------------+
| brazil     |
| GTA        |
| New jersey |
| New York   |
| Toronto    |
| USA        |
| WDC        |
+------------+
7 rows in set (0.00 sec)

MariaDB [CSD2204S18]> select count(city) "unique cities" from customer group by city;
+---------------+
| unique cities |
+---------------+
|             1 |
|             1 |
|             1 |
|             2 |
|             3 |
|             1 |
|             1 |
+---------------+
7 rows in set (0.02 sec)

MariaDB [CSD2204S18]> select city,count(city) "No . of customers" from customer group by city;
+------------+-------------------+
| city       | No . of customers |
+------------+-------------------+
| brazil     |                 1 |
| GTA        |                 1 |
| New jersey |                 1 |
| New York   |                 2 |
| Toronto    |                 3 |
| USA        |                 1 |
| WDC        |                 1 |
+------------+-------------------+
7 rows in set (0.00 sec)

MariaDB [CSD2204S18]> select distinct(city) from customer;
+------------+
| city       |
+------------+
| WDC        |
| Toronto    |
| New York   |
| brazil     |
| USA        |
| GTA        |
| New jersey |
+------------+
7 rows in set (0.00 sec)

MariaDB [CSD2204S18]> select city,count(city) "NO. of customers" FROM customer GROUP BY city HAVING city='new%';
Empty set (0.00 sec)

MariaDB [CSD2204S18]> select city,count(city) "NO. of customers" FROM customer GROUP BY city HAVING city LIKE 'new%';
+------------+------------------+
| city       | NO. of customers |
+------------+------------------+
| New jersey |                1 |
| New York   |                2 |
+------------+------------------+
2 rows in set (0.00 sec)

MariaDB [CSD2204S18]> select city,count(city) "NO. of customers" FROM customer GROUP BY city HAVING city LIKE 'new%' OR city='toronto';
+------------+------------------+
| city       | NO. of customers |
+------------+------------------+
| New jersey |                1 |
| New York   |                2 |
| Toronto    |                3 |
+------------+------------------+
3 rows in set (0.00 sec)

MariaDB [CSD2204S18]> select city,count(city) "NO. of customers" FROM customer GROUP BY city HAVING COUNT(city)>2;
+---------+------------------+
| city    | NO. of customers |
+---------+------------------+
| Toronto |                3 |
+---------+------------------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> select * from customer where name regexp '^d';
+--------+-------------+----------+---------+------------+------+
| custID | name        | nickname | city    | postalCode | age  |
+--------+-------------+----------+---------+------------+------+
| C04    | Denial jack | DJ       | brazil  | 341020     |   25 |
| C05    | Dona newman | new      | toronto | 130120     |   50 |
+--------+-------------+----------+---------+------------+------+
2 rows in set (0.05 sec)

MariaDB [CSD2204S18]> select * from customer where name regexp 'n$';
+--------+-----------------+----------+----------+------------+------+
| custID | name            | nickname | city     | postalCode | age  |
+--------+-----------------+----------+----------+------------+------+
| C03    | Charlies Theron | Cher     | New York | 120134     |   20 |
| C05    | Dona newman     | new      | toronto  | 130120     |   50 |
+--------+-----------------+----------+----------+------------+------+
2 rows in set (0.00 sec)

MariaDB [CSD2204S18]> select * from customer where name regexp '^..a';
+--------+-----------------+----------+----------+------------+------+
| custID | name            | nickname | city     | postalCode | age  |
+--------+-----------------+----------+----------+------------+------+
| C03    | Charlies Theron | Cher     | New York | 120134     |   20 |
+--------+-----------------+----------+----------+------------+------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> select * from customer where postalcode regexp '^32';
+--------+--------------+----------+----------+------------+------+
| custID | name         | nickname | city     | postalCode | age  |
+--------+--------------+----------+----------+------------+------+
| C01    | ashely       | ash      | WDC      | 321200     |   34 |
| C07    | Bobby Chacko | chac     | new york | 320300     |   70 |
+--------+--------------+----------+----------+------------+------+
2 rows in set (0.00 sec)

MariaDB [CSD2204S18]> select * from customer where postalcode regexp '[0-9]';
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

MariaDB [CSD2204S18]> select * from customer where postalcode regexp '[a-z]';
Empty set (0.00 sec)

MariaDB [CSD2204S18]> select * from customer where postalcode regexp '^[0-9]';
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

MariaDB [CSD2204S18]> select * from customer where nickname regexp '^a*';
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

MariaDB [CSD2204S18]> select * from customer where nickname regexp '^a+';
+--------+---------------+----------+------+------------+------+
| custID | name          | nickname | city | postalCode | age  |
+--------+---------------+----------+------+------------+------+
| C01    | ashely        | ash      | WDC  | 321200     |   34 |
| C08    | Ashko Charles | AK       | USA  | 421044     |   72 |
+--------+---------------+----------+------+------------+------+
2 rows in set (0.00 sec)

MariaDB [CSD2204S18]> select * from customer where nickname regexp '^a?';
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

MariaDB [CSD2204S18]> select * from customer where city regexp '^.4';
Empty set (0.00 sec)

MariaDB [CSD2204S18]> select * from customer where city regexp '^.{4}';
+--------+-----------------+----------+------------+------------+------+
| custID | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| C02    | Bob Marley      | bm       | Toronto    | 100100     |   23 |
| C03    | Charlies Theron | Cher     | New York   | 120134     |   20 |
| C04    | Denial jack     | DJ       | brazil     | 341020     |   25 |
| C05    | Dona newman     | new      | toronto    | 130120     |   50 |
| C06    | eston M.        | M.       | toronto    | 201023     |   65 |
| C07    | Bobby Chacko    | chac     | new york   | 320300     |   70 |
| C10    | Jack sp         | sparrow  | New jersey | 102301     |   35 |
+--------+-----------------+----------+------------+------------+------+
7 rows in set (0.03 sec)

MariaDB [CSD2204S18]> select * from customer where city regexp '^t{4}';
Empty set (0.00 sec)

MariaDB [CSD2204S18]> select * from customer where city rLIKE '^.{4}';
+--------+-----------------+----------+------------+------------+------+
| custID | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| C02    | Bob Marley      | bm       | Toronto    | 100100     |   23 |
| C03    | Charlies Theron | Cher     | New York   | 120134     |   20 |
| C04    | Denial jack     | DJ       | brazil     | 341020     |   25 |
| C05    | Dona newman     | new      | toronto    | 130120     |   50 |
| C06    | eston M.        | M.       | toronto    | 201023     |   65 |
| C07    | Bobby Chacko    | chac     | new york   | 320300     |   70 |
| C10    | Jack sp         | sparrow  | New jersey | 102301     |   35 |
+--------+-----------------+----------+------------+------------+------+
7 rows in set (0.00 sec)

MariaDB [CSD2204S18]> select * from customer where city rLIKE '^.{3}';
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

MariaDB [CSD2204S18]> select * from customer where city rLIKE '^.{6}';
+--------+-----------------+----------+------------+------------+------+
| custID | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| C02    | Bob Marley      | bm       | Toronto    | 100100     |   23 |
| C03    | Charlies Theron | Cher     | New York   | 120134     |   20 |
| C04    | Denial jack     | DJ       | brazil     | 341020     |   25 |
| C05    | Dona newman     | new      | toronto    | 130120     |   50 |
| C06    | eston M.        | M.       | toronto    | 201023     |   65 |
| C07    | Bobby Chacko    | chac     | new york   | 320300     |   70 |
| C10    | Jack sp         | sparrow  | New jersey | 102301     |   35 |
+--------+-----------------+----------+------------+------------+------+
7 rows in set (0.00 sec)

MariaDB [CSD2204S18]> select * from customer where city rLIKE '^.{7}';
+--------+-----------------+----------+------------+------------+------+
| custID | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| C02    | Bob Marley      | bm       | Toronto    | 100100     |   23 |
| C03    | Charlies Theron | Cher     | New York   | 120134     |   20 |
| C05    | Dona newman     | new      | toronto    | 130120     |   50 |
| C06    | eston M.        | M.       | toronto    | 201023     |   65 |
| C07    | Bobby Chacko    | chac     | new york   | 320300     |   70 |
| C10    | Jack sp         | sparrow  | New jersey | 102301     |   35 |
+--------+-----------------+----------+------------+------------+------+
6 rows in set (0.00 sec)

MariaDB [CSD2204S18]> select * from customer where nickname rLIKE '^a?';
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

MariaDB [CSD2204S18]> select * from customer where nickname rLIKE 'a$';
Empty set (0.00 sec)

MariaDB [CSD2204S18]> select * from customer where name rLIKE 'n$';
+--------+-----------------+----------+----------+------------+------+
| custID | name            | nickname | city     | postalCode | age  |
+--------+-----------------+----------+----------+------------+------+
| C03    | Charlies Theron | Cher     | New York | 120134     |   20 |
| C05    | Dona newman     | new      | toronto  | 130120     |   50 |
+--------+-----------------+----------+----------+------------+------+
2 rows in set (0.00 sec)

MariaDB [CSD2204S18]> select CURdate();
+------------+
| CURdate()  |
+------------+
| 2018-05-14 |
+------------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> select now();
+---------------------+
| now()               |
+---------------------+
| 2018-05-14 09:15:56 |
+---------------------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> alter table customer add column dob date;
Query OK, 0 rows affected (0.36 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [CSD2204S18]> desc customer;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| custID     | varchar(5)  | NO   | PRI | NULL    |       |
| name       | varchar(50) | YES  |     | NULL    |       |
| nickname   | varchar(10) | YES  |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalCode | varchar(10) | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
| dob        | date        | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
7 rows in set (0.00 sec)

MariaDB [CSD2204S18]> update customer set dob = '1991-01-10' where custid ='c02';
Query OK, 1 row affected (0.08 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [CSD2204S18]> update customer set dob = '1995-04-04' where custid ='c01';
Query OK, 1 row affected (0.03 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [CSD2204S18]> update customer set dob = '1994-05-09' where custid ='c03';
Query OK, 1 row affected (0.06 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [CSD2204S18]> update customer set dob = '1994-04-08' where custid ='c03';
Query OK, 1 row affected (0.05 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [CSD2204S18]> update customer set dob = '1995-08-01' where custid ='c04';
Query OK, 1 row affected (0.05 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [CSD2204S18]> update customer set dob = '1995-09-22' where custid ='c05';
Query OK, 1 row affected (0.05 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [CSD2204S18]> update customer set dob = '1995-02-27' where custid ='c06';
Query OK, 1 row affected (0.05 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [CSD2204S18]> update customer set dob = '1985-08-28' where custid ='c06';
Query OK, 1 row affected (0.05 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [CSD2204S18]> update customer set dob = '1985-08-27' where custid ='c07';
Query OK, 1 row affected (0.03 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [CSD2204S18]> update customer set dob = '1985-09-27' where custid ='c08';
Query OK, 1 row affected (0.03 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [CSD2204S18]> update customer set dob = '1995-04-27' where custid ='c09';
Query OK, 1 row affected (0.03 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [CSD2204S18]> update customer set dob = '1995-04-21' where custid ='c10';
Query OK, 1 row affected (0.05 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [CSD2204S18]> select * from customer;
+--------+-----------------+----------+------------+------------+------+------------+
| custID | name            | nickname | city       | postalCode | age  | dob        |
+--------+-----------------+----------+------------+------------+------+------------+
| C01    | ashely          | ash      | WDC        | 321200     |   34 | 1995-04-04 |
| C02    | Bob Marley      | bm       | Toronto    | 100100     |   23 | 1991-01-10 |
| C03    | Charlies Theron | Cher     | New York   | 120134     |   20 | 1994-04-08 |
| C04    | Denial jack     | DJ       | brazil     | 341020     |   25 | 1995-08-01 |
| C05    | Dona newman     | new      | toronto    | 130120     |   50 | 1995-09-22 |
| C06    | eston M.        | M.       | toronto    | 201023     |   65 | 1985-08-28 |
| C07    | Bobby Chacko    | chac     | new york   | 320300     |   70 | 1985-08-27 |
| C08    | Ashko Charles   | AK       | USA        | 421044     |   72 | 1985-09-27 |
| C09    | Tony Special    | specie   | GTA        | 418921     |   62 | 1995-04-27 |
| C10    | Jack sp         | sparrow  | New jersey | 102301     |   35 | 1995-04-21 |
+--------+-----------------+----------+------------+------------+------+------------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> select name,dob,timestampdiff(YEAR,dob,CURDATE()) from customer;
+-----------------+------------+-----------------------------------+
| name            | dob        | timestampdiff(YEAR,dob,CURDATE()) |
+-----------------+------------+-----------------------------------+
| ashely          | 1995-04-04 |                                23 |
| Bob Marley      | 1991-01-10 |                                27 |
| Charlies Theron | 1994-04-08 |                                24 |
| Denial jack     | 1995-08-01 |                                22 |
| Dona newman     | 1995-09-22 |                                22 |
| eston M.        | 1985-08-28 |                                32 |
| Bobby Chacko    | 1985-08-27 |                                32 |
| Ashko Charles   | 1985-09-27 |                                32 |
| Tony Special    | 1995-04-27 |                                23 |
| Jack sp         | 1995-04-21 |                                23 |
+-----------------+------------+-----------------------------------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> 
MariaDB [CSD2204S18]> 
MariaDB [CSD2204S18]> 
MariaDB [CSD2204S18]> 
MariaDB [CSD2204S18]> select name,dob,timestampdiff(year,dob,curdate()) "age" from customer where age=23;
+------------+------------+------+
| name       | dob        | age  |
+------------+------------+------+
| Bob Marley | 1991-01-10 |   27 |
+------------+------------+------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> select name,dob,timestampdiff(YEAR,dob,CURDATE()) from customer;
+-----------------+------------+-----------------------------------+
| name            | dob        | timestampdiff(YEAR,dob,CURDATE()) |
+-----------------+------------+-----------------------------------+
| ashely          | 1995-04-04 |                                23 |
| Bob Marley      | 1991-01-10 |                                27 |
| Charlies Theron | 1994-04-08 |                                24 |
| Denial jack     | 1995-08-01 |                                22 |
| Dona newman     | 1995-09-22 |                                22 |
| eston M.        | 1985-08-28 |                                32 |
| Bobby Chacko    | 1985-08-27 |                                32 |
| Ashko Charles   | 1985-09-27 |                                32 |
| Tony Special    | 1995-04-27 |                                23 |
| Jack sp         | 1995-04-21 |                                23 |
+-----------------+------------+-----------------------------------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> select name,dob,timestampdiff(YEAR,dob,CURDATE()) from customer HAVING age=23;
ERROR 1054 (42S22): Unknown column 'age' in 'having clause'
MariaDB [CSD2204S18]> select name,dob,timestampdiff(YEAR,dob,CURDATE()) "age" from customer HAVING age=23;
+--------------+------------+------+
| name         | dob        | age  |
+--------------+------------+------+
| ashely       | 1995-04-04 |   23 |
| Tony Special | 1995-04-27 |   23 |
| Jack sp      | 1995-04-21 |   23 |
+--------------+------------+------+
3 rows in set (0.00 sec)

MariaDB [CSD2204S18]> select name,dob,timestampdiff(YEAR,dob,CURDATE()) "age" from customer where timestampdiff(YEAR,dob,CURDATE())=23;
+--------------+------------+------+
| name         | dob        | age  |
+--------------+------------+------+
| ashely       | 1995-04-04 |   23 |
| Tony Special | 1995-04-27 |   23 |
| Jack sp      | 1995-04-21 |   23 |
+--------------+------------+------+
3 rows in set (0.00 sec)

MariaDB [CSD2204S18]> exit
