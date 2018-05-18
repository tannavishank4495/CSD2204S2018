MariaDB [(none)]> use csd2204s18
Database changed
MariaDB [csd2204s18]> select salary from employees where last
    -> _name like 'bell';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '_name like 'bell'' at line 2
MariaDB [csd2204s18]> select salary from employees where las_name like 'bell';
ERROR 1054 (42S22): Unknown column 'las_name' in 'where clause'
MariaDB [csd2204s18]> select salary from employees where last_name like 'bell';
+---------+
| salary  |
+---------+
| 4000.00 |
+---------+
1 row in set (0.03 sec)

MariaDB [csd2204s18]> select first_name,last_name,salary from employees where salary > (select salary from employees where last_name like 'bell';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 1
MariaDB [csd2204s18]> select MIN(min_salary)+1000 from jobs;
+----------------------+
| MIN(min_salary)+1000 |
+----------------------+
|                 3000 |
+----------------------+
1 row in set (0.11 sec)

MariaDB [csd2204s18]> select first_name,last_name,salary from employees where salary =(salary MIN(min_salary)+1000 FROM jobs);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'MIN(min_salary)+1000 FROM jobs)' at line 1
MariaDB [csd2204s18]> select first_name,last_name,salary from employees where salary =(select MIN(min_salary)+1000 FROM jobs);
+------------+-----------+---------+
| first_name | last_name | salary  |
+------------+-----------+---------+
| Anthony    | Cabrio    | 3000.00 |
| Kevin      | Feeney    | 3000.00 |
+------------+-----------+---------+
2 rows in set (0.00 sec)

MariaDB [csd2204s18]> select first_name,last
    -> _name,slary from employees where salary > ALL(select avg(salary) from employees GROUP BY department_id);
ERROR 1054 (42S22): Unknown column 'last' in 'field list'
MariaDB [csd2204s18]> select first_name,last_name,slary from employees where salary > ALL(select avg(salary) from employees GROUP BY department_id);
ERROR 1054 (42S22): Unknown column 'slary' in 'field list'
MariaDB [csd2204s18]> select first_name,last_name,salary from employees where salary > ALL(select avg(salary) from employees GROUP BY department_id);
+------------+-----------+----------+
| first_name | last_name | salary   |
+------------+-----------+----------+
| Steven     | King      | 24000.00 |
+------------+-----------+----------+
1 row in set (0.01 sec)

MariaDB [csd2204s18]> select max(salary) FROM employees where job_id='sh_clerk';
+-------------+
| max(salary) |
+-------------+
|     4200.00 |
+-------------+
1 row in set (0.02 sec)

MariaDB [csd2204s18]> select first_name,last_name,salary from employees where salary > (select max(salary) from employees where job_id='sh_clerk') ORDER BY salary;
+-------------+------------+----------+
| first_name  | last_name  | salary   |
+-------------+------------+----------+
| Jennifer    | Whalen     |  4400.00 |
| David       | Austin     |  4800.00 |
| Valli       | Pataballa  |  4800.00 |
| Kevin       | Mourgos    |  5800.00 |
| Bruce       | Ernst      |  6000.00 |
| Pat         | Fay        |  6000.00 |
| Sundita     | Kumar      |  6100.00 |
| Amit        | Banda      |  6200.00 |
| Charles     | Johnson    |  6200.00 |
| Sundar      | Ande       |  6400.00 |
| Susan       | Mavris     |  6500.00 |
| Shanta      | Vollman    |  6500.00 |
| David       | Lee        |  6800.00 |
| Luis        | Popp       |  6900.00 |
| Sarath      | Sewall     |  7000.00 |
| Oliver      | Tuvault    |  7000.00 |
| Kimberely   | Grant      |  7000.00 |
| Mattea      | Marvins    |  7200.00 |
| Elizabeth   | Bates      |  7300.00 |
| William     | Smith      |  7400.00 |
| Nanette     | Cambrault  |  7500.00 |
| Louise      | Doran      |  7500.00 |
| Ismael      | Sciarra    |  7700.00 |
| Jose Manuel | Urman      |  7800.00 |
| Payam       | Kaufling   |  7900.00 |
| Lindsey     | Smith      |  8000.00 |
| Matthew     | Weiss      |  8000.00 |
| Christopher | Olsen      |  8000.00 |
| Adam        | Fripp      |  8200.00 |
| John        | Chen       |  8200.00 |
| William     | Gietz      |  8300.00 |
| Jack        | Livingston |  8400.00 |
| Jonathon    | Taylor     |  8600.00 |
| Alyssa      | Hutton     |  8800.00 |
| Allan       | McEwen     |  9000.00 |
| Peter       | Hall       |  9000.00 |
| Alexander   | Hunold     |  9000.00 |
| Daniel      | Faviet     |  9000.00 |
| Patrick     | Sully      |  9500.00 |
| Danielle    | Greene     |  9500.00 |
| David       | Bernstein  |  9500.00 |
| Tayler      | Fox        |  9600.00 |
| Hermann     | Baer       | 10000.00 |
| Harrison    | Bloom      | 10000.00 |
| Janette     | King       | 10000.00 |
| Peter       | Tucker     | 10000.00 |
| Eleni       | Zlotkey    | 10500.00 |
| Clara       | Vishney    | 10500.00 |
| Gerald      | Cambrault  | 11000.00 |
| Ellen       | Abel       | 11000.00 |
| Den         | Raphaely   | 11000.00 |
| Lisa        | Ozer       | 11500.00 |
| Alberto     | Errazuriz  | 12000.00 |
| Shelley     | Higgins    | 12000.00 |
| Nancy       | Greenberg  | 12000.00 |
| Michael     | Hartstein  | 13000.00 |
| Karen       | Partners   | 13500.00 |
| John        | Russell    | 14000.00 |
| Lex         | De Haan    | 17000.00 |
| Neena       | Kochhar    | 17000.00 |
| Steven      | King       | 24000.00 |
+-------------+------------+----------+
61 rows in set (0.00 sec)

MariaDB [csd2204s18]> select first_name,last_name,salary from employees where salary = (select max(salary) from employees where job_id='sh_clerk') ORDER BY salary;
+------------+-----------+---------+
| first_name | last_name | salary  |
+------------+-----------+---------+
| Diana      | Lorentz   | 4200.00 |
| Nandita    | Sarchand  | 4200.00 |
+------------+-----------+---------+
2 rows in set (0.00 sec)

MariaDB [csd2204s18]> select first_name,last_name,salary from employees where salary < ANY (select max(salary) from employees where job_id='sh_clerk') ORDER BY salary;
+------------+-------------+---------+
| first_name | last_name   | salary  |
+------------+-------------+---------+
| TJ         | Olson       | 2100.00 |
| Hazel      | Philtanker  | 2200.00 |
| Steven     | Markle      | 2200.00 |
| Ki         | Gee         | 2400.00 |
| James      | Landry      | 2400.00 |
| Martha     | Sullivan    | 2500.00 |
| James      | Marlow      | 2500.00 |
| Randall    | Perkins     | 2500.00 |
| Karen      | Colmenares  | 2500.00 |
| Peter      | Vargas      | 2500.00 |
| Joshua     | Patel       | 2500.00 |
| Douglas    | Grant       | 2600.00 |
| Donald     | OConnell    | 2600.00 |
| Guy        | Himuro      | 2600.00 |
| Randall    | Matos       | 2600.00 |
| Irene      | Mikkilineni | 2700.00 |
| John       | Seo         | 2700.00 |
| Mozhe      | Atkinson    | 2800.00 |
| Vance      | Jones       | 2800.00 |
| Sigal      | Tobias      | 2800.00 |
| Girard     | Geoni       | 2800.00 |
| Michael    | Rogers      | 2900.00 |
| Timothy    | Gates       | 2900.00 |
| Shelli     | Baida       | 2900.00 |
| Kevin      | Feeney      | 3000.00 |
| Anthony    | Cabrio      | 3000.00 |
| Alana      | Walsh       | 3100.00 |
| Jean       | Fleaur      | 3100.00 |
| Alexander  | Khoo        | 3100.00 |
| Curtis     | Davies      | 3100.00 |
| Stephen    | Stiles      | 3200.00 |
| Julia      | Nayer       | 3200.00 |
| Samuel     | McCain      | 3200.00 |
| Winston    | Taylor      | 3200.00 |
| Jason      | Mallin      | 3300.00 |
| Laura      | Bissot      | 3300.00 |
| Julia      | Dellinger   | 3400.00 |
| Trenna     | Rajs        | 3500.00 |
| Renske     | Ladwig      | 3600.00 |
| Jennifer   | Dilly       | 3600.00 |
| Kelly      | Chung       | 3800.00 |
| Britney    | Everett     | 3900.00 |
| Sarah      | Bell        | 4000.00 |
| Alexis     | Bull        | 4100.00 |
+------------+-------------+---------+
44 rows in set (0.00 sec)

MariaDB [csd2204s18]> select first_name,last_name from employees where employee_id ( select distinct (manager_id) from employees where manager_id !=0);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'select distinct (manager_id) from employees where manager_id !=0)' at line 1
MariaDB [csd2204s18]> select first_name,last_name from employees where employee_id NOT IN ( select distinct (manager_id) from employees where manager_id !=0);
+-------------+-------------+
| first_name  | last_name   |
+-------------+-------------+
| Ellen       | Abel        |
| Sundar      | Ande        |
| Mozhe       | Atkinson    |
| David       | Austin      |
| Hermann     | Baer        |
| Shelli      | Baida       |
| Amit        | Banda       |
| Elizabeth   | Bates       |
| Sarah       | Bell        |
| David       | Bernstein   |
| Laura       | Bissot      |
| Harrison    | Bloom       |
| Alexis      | Bull        |
| Anthony     | Cabrio      |
| Nanette     | Cambrault   |
| John        | Chen        |
| Kelly       | Chung       |
| Karen       | Colmenares  |
| Curtis      | Davies      |
| Julia       | Dellinger   |
| Jennifer    | Dilly       |
| Louise      | Doran       |
| Bruce       | Ernst       |
| Britney     | Everett     |
| Daniel      | Faviet      |
| Pat         | Fay         |
| Kevin       | Feeney      |
| Jean        | Fleaur      |
| Tayler      | Fox         |
| Timothy     | Gates       |
| Ki          | Gee         |
| Girard      | Geoni       |
| William     | Gietz       |
| Douglas     | Grant       |
| Kimberely   | Grant       |
| Danielle    | Greene      |
| Peter       | Hall        |
| Guy         | Himuro      |
| Alyssa      | Hutton      |
| Charles     | Johnson     |
| Vance       | Jones       |
| Alexander   | Khoo        |
| Janette     | King        |
| Sundita     | Kumar       |
| Renske      | Ladwig      |
| James       | Landry      |
| David       | Lee         |
| Jack        | Livingston  |
| Diana       | Lorentz     |
| Jason       | Mallin      |
| Steven      | Markle      |
| James       | Marlow      |
| Mattea      | Marvins     |
| Randall     | Matos       |
| Susan       | Mavris      |
| Samuel      | McCain      |
| Allan       | McEwen      |
| Irene       | Mikkilineni |
| Julia       | Nayer       |
| Donald      | OConnell    |
| Christopher | Olsen       |
| TJ          | Olson       |
| Lisa        | Ozer        |
| Valli       | Pataballa   |
| Joshua      | Patel       |
| Randall     | Perkins     |
| Hazel       | Philtanker  |
| Luis        | Popp        |
| Trenna      | Rajs        |
| Michael     | Rogers      |
| Nandita     | Sarchand    |
| Ismael      | Sciarra     |
| John        | Seo         |
| Sarath      | Sewall      |
| Lindsey     | Smith       |
| William     | Smith       |
| Stephen     | Stiles      |
| Martha      | Sullivan    |
| Patrick     | Sully       |
| Jonathon    | Taylor      |
| Winston     | Taylor      |
| Sigal       | Tobias      |
| Peter       | Tucker      |
| Oliver      | Tuvault     |
| Jose Manuel | Urman       |
| Peter       | Vargas      |
| Clara       | Vishney     |
| Alana       | Walsh       |
| Jennifer    | Whalen      |
+-------------+-------------+
89 rows in set (0.05 sec)

MariaDB [csd2204s18]> select b.first_name,b.last_name from employees b where NOT EXISTS (select 'X' from employees a where a.manager_id=b.employee_id);
+-------------+-------------+
| first_name  | last_name   |
+-------------+-------------+
| Ellen       | Abel        |
| Sundar      | Ande        |
| Mozhe       | Atkinson    |
| David       | Austin      |
| Hermann     | Baer        |
| Shelli      | Baida       |
| Amit        | Banda       |
| Elizabeth   | Bates       |
| Sarah       | Bell        |
| David       | Bernstein   |
| Laura       | Bissot      |
| Harrison    | Bloom       |
| Alexis      | Bull        |
| Anthony     | Cabrio      |
| Nanette     | Cambrault   |
| John        | Chen        |
| Kelly       | Chung       |
| Karen       | Colmenares  |
| Curtis      | Davies      |
| Julia       | Dellinger   |
| Jennifer    | Dilly       |
| Louise      | Doran       |
| Bruce       | Ernst       |
| Britney     | Everett     |
| Daniel      | Faviet      |
| Pat         | Fay         |
| Kevin       | Feeney      |
| Jean        | Fleaur      |
| Tayler      | Fox         |
| Timothy     | Gates       |
| Ki          | Gee         |
| Girard      | Geoni       |
| William     | Gietz       |
| Douglas     | Grant       |
| Kimberely   | Grant       |
| Danielle    | Greene      |
| Peter       | Hall        |
| Guy         | Himuro      |
| Alyssa      | Hutton      |
| Charles     | Johnson     |
| Vance       | Jones       |
| Alexander   | Khoo        |
| Janette     | King        |
| Sundita     | Kumar       |
| Renske      | Ladwig      |
| James       | Landry      |
| David       | Lee         |
| Jack        | Livingston  |
| Diana       | Lorentz     |
| Jason       | Mallin      |
| Steven      | Markle      |
| James       | Marlow      |
| Mattea      | Marvins     |
| Randall     | Matos       |
| Susan       | Mavris      |
| Samuel      | McCain      |
| Allan       | McEwen      |
| Irene       | Mikkilineni |
| Julia       | Nayer       |
| Donald      | OConnell    |
| Christopher | Olsen       |
| TJ          | Olson       |
| Lisa        | Ozer        |
| Valli       | Pataballa   |
| Joshua      | Patel       |
| Randall     | Perkins     |
| Hazel       | Philtanker  |
| Luis        | Popp        |
| Trenna      | Rajs        |
| Michael     | Rogers      |
| Nandita     | Sarchand    |
| Ismael      | Sciarra     |
| John        | Seo         |
| Sarath      | Sewall      |
| Lindsey     | Smith       |
| William     | Smith       |
| Stephen     | Stiles      |
| Martha      | Sullivan    |
| Patrick     | Sully       |
| Jonathon    | Taylor      |
| Winston     | Taylor      |
| Sigal       | Tobias      |
| Peter       | Tucker      |
| Oliver      | Tuvault     |
| Jose Manuel | Urman       |
| Peter       | Vargas      |
| Clara       | Vishney     |
| Alana       | Walsh       |
| Jennifer    | Whalen      |
+-------------+-------------+
89 rows in set (0.00 sec)

MariaDB [csd2204s18]> select employee_id,first_name,last_name (select department_name from departments d where e.department_id=d.department) from employees e;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'select department_name from departments d where e.department_id=d.department) fr' at line 1
MariaDB [csd2204s18]> select first_name,last_name (select department_name from departments d where e.department_id=d.department_id) from employees e;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'select department_name from departments d where e.department_id=d.department_id)' at line 1
MariaDB [csd2204s18]> select first_name,last_name (select department_name from departments d where d.department_id=e.department_id) "department name" from employees e;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'select department_name from departments d where d.department_id=e.department_id)' at line 1
MariaDB [csd2204s18]> select first_name,last_name,(select department_name from departments d where d.department_id=e.department_id) "department name" from employees e;
+-------------+-------------+------------------+
| first_name  | last_name   | department name  |
+-------------+-------------+------------------+
| Steven      | King        | Executive        |
| Neena       | Kochhar     | Executive        |
| Lex         | De Haan     | Executive        |
| Alexander   | Hunold      | IT               |
| Bruce       | Ernst       | IT               |
| David       | Austin      | IT               |
| Valli       | Pataballa   | IT               |
| Diana       | Lorentz     | IT               |
| Nancy       | Greenberg   | Finance          |
| Daniel      | Faviet      | Finance          |
| John        | Chen        | Finance          |
| Ismael      | Sciarra     | Finance          |
| Jose Manuel | Urman       | Finance          |
| Luis        | Popp        | Finance          |
| Den         | Raphaely    | Purchasing       |
| Alexander   | Khoo        | Purchasing       |
| Shelli      | Baida       | Purchasing       |
| Sigal       | Tobias      | Purchasing       |
| Guy         | Himuro      | Purchasing       |
| Karen       | Colmenares  | Purchasing       |
| Matthew     | Weiss       | Shipping         |
| Adam        | Fripp       | Shipping         |
| Payam       | Kaufling    | Shipping         |
| Shanta      | Vollman     | Shipping         |
| Kevin       | Mourgos     | Shipping         |
| Julia       | Nayer       | Shipping         |
| Irene       | Mikkilineni | Shipping         |
| James       | Landry      | Shipping         |
| Steven      | Markle      | Shipping         |
| Laura       | Bissot      | Shipping         |
| Mozhe       | Atkinson    | Shipping         |
| James       | Marlow      | Shipping         |
| TJ          | Olson       | Shipping         |
| Jason       | Mallin      | Shipping         |
| Michael     | Rogers      | Shipping         |
| Ki          | Gee         | Shipping         |
| Hazel       | Philtanker  | Shipping         |
| Renske      | Ladwig      | Shipping         |
| Stephen     | Stiles      | Shipping         |
| John        | Seo         | Shipping         |
| Joshua      | Patel       | Shipping         |
| Trenna      | Rajs        | Shipping         |
| Curtis      | Davies      | Shipping         |
| Randall     | Matos       | Shipping         |
| Peter       | Vargas      | Shipping         |
| John        | Russell     | Sales            |
| Karen       | Partners    | Sales            |
| Alberto     | Errazuriz   | Sales            |
| Gerald      | Cambrault   | Sales            |
| Eleni       | Zlotkey     | Sales            |
| Peter       | Tucker      | Sales            |
| David       | Bernstein   | Sales            |
| Peter       | Hall        | Sales            |
| Christopher | Olsen       | Sales            |
| Nanette     | Cambrault   | Sales            |
| Oliver      | Tuvault     | Sales            |
| Janette     | King        | Sales            |
| Patrick     | Sully       | Sales            |
| Allan       | McEwen      | Sales            |
| Lindsey     | Smith       | Sales            |
| Louise      | Doran       | Sales            |
| Sarath      | Sewall      | Sales            |
| Clara       | Vishney     | Sales            |
| Danielle    | Greene      | Sales            |
| Mattea      | Marvins     | Sales            |
| David       | Lee         | Sales            |
| Sundar      | Ande        | Sales            |
| Amit        | Banda       | Sales            |
| Lisa        | Ozer        | Sales            |
| Harrison    | Bloom       | Sales            |
| Tayler      | Fox         | Sales            |
| William     | Smith       | Sales            |
| Elizabeth   | Bates       | Sales            |
| Sundita     | Kumar       | Sales            |
| Ellen       | Abel        | Sales            |
| Alyssa      | Hutton      | Sales            |
| Jonathon    | Taylor      | Sales            |
| Jack        | Livingston  | Sales            |
| Kimberely   | Grant       | NULL             |
| Charles     | Johnson     | Sales            |
| Winston     | Taylor      | Shipping         |
| Jean        | Fleaur      | Shipping         |
| Martha      | Sullivan    | Shipping         |
| Girard      | Geoni       | Shipping         |
| Nandita     | Sarchand    | Shipping         |
| Alexis      | Bull        | Shipping         |
| Julia       | Dellinger   | Shipping         |
| Anthony     | Cabrio      | Shipping         |
| Kelly       | Chung       | Shipping         |
| Jennifer    | Dilly       | Shipping         |
| Timothy     | Gates       | Shipping         |
| Randall     | Perkins     | Shipping         |
| Sarah       | Bell        | Shipping         |
| Britney     | Everett     | Shipping         |
| Samuel      | McCain      | Shipping         |
| Vance       | Jones       | Shipping         |
| Alana       | Walsh       | Shipping         |
| Kevin       | Feeney      | Shipping         |
| Donald      | OConnell    | Shipping         |
| Douglas     | Grant       | Shipping         |
| Jennifer    | Whalen      | Administration   |
| Michael     | Hartstein   | Marketing        |
| Pat         | Fay         | Marketing        |
| Susan       | Mavris      | Human Resources  |
| Hermann     | Baer        | Public Relations |
| Shelley     | Higgins     | Accounting       |
| William     | Gietz       | Accounting       |
+-------------+-------------+------------------+
107 rows in set (0.05 sec)

MariaDB [csd2204s18]> select avg(salary),department_id from employees GROUP BY department_id;
+--------------+---------------+
| avg(salary)  | department_id |
+--------------+---------------+
|  7000.000000 |             0 |
|  4400.000000 |            10 |
|  9500.000000 |            20 |
|  4150.000000 |            30 |
|  6500.000000 |            40 |
|  3475.555556 |            50 |
|  5760.000000 |            60 |
| 10000.000000 |            70 |
|  8955.882353 |            80 |
| 19333.333333 |            90 |
|  8600.000000 |           100 |
| 10150.000000 |           110 |
+--------------+---------------+
12 rows in set (0.00 sec)

MariaDB [csd2204s18]> select first_name,last_name,salary FROM employees e where salary > (select avg(salary) from employees group by department_id HAVING department_id =e.department_id); 
+------------+-----------+----------+
| first_name | last_name | salary   |
+------------+-----------+----------+
| Steven     | King      | 24000.00 |
| Alexander  | Hunold    |  9000.00 |
| Bruce      | Ernst     |  6000.00 |
| Nancy      | Greenberg | 12000.00 |
| Daniel     | Faviet    |  9000.00 |
| Den        | Raphaely  | 11000.00 |
| Matthew    | Weiss     |  8000.00 |
| Adam       | Fripp     |  8200.00 |
| Payam      | Kaufling  |  7900.00 |
| Shanta     | Vollman   |  6500.00 |
| Kevin      | Mourgos   |  5800.00 |
| Renske     | Ladwig    |  3600.00 |
| Trenna     | Rajs      |  3500.00 |
| John       | Russell   | 14000.00 |
| Karen      | Partners  | 13500.00 |
| Alberto    | Errazuriz | 12000.00 |
| Gerald     | Cambrault | 11000.00 |
| Eleni      | Zlotkey   | 10500.00 |
| Peter      | Tucker    | 10000.00 |
| David      | Bernstein |  9500.00 |
| Peter      | Hall      |  9000.00 |
| Janette    | King      | 10000.00 |
| Patrick    | Sully     |  9500.00 |
| Allan      | McEwen    |  9000.00 |
| Clara      | Vishney   | 10500.00 |
| Danielle   | Greene    |  9500.00 |
| Lisa       | Ozer      | 11500.00 |
| Harrison   | Bloom     | 10000.00 |
| Tayler     | Fox       |  9600.00 |
| Ellen      | Abel      | 11000.00 |
| Nandita    | Sarchand  |  4200.00 |
| Alexis     | Bull      |  4100.00 |
| Kelly      | Chung     |  3800.00 |
| Jennifer   | Dilly     |  3600.00 |
| Sarah      | Bell      |  4000.00 |
| Britney    | Everett   |  3900.00 |
| Michael    | Hartstein | 13000.00 |
| Shelley    | Higgins   | 12000.00 |
+------------+-----------+----------+
38 rows in set (0.02 sec)

MariaDB [csd2204s18]> selct distinct(salary) from employees e1 where 5 = (select count(distinct salary) from emplyees e2 where e2.salary >= e.salary);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'selct distinct(salary) from employees e1 where 5 = (select count(distinct salary' at line 1
MariaDB [csd2204s18]> select distinct(salary) from employees e1 where 5 = (select count(distinct salary) from emplyees e2 where e2.salary >= e.salary);
ERROR 1146 (42S02): Table 'csd2204s18.emplyees' doesn't exist
MariaDB [csd2204s18]> select distinct(salary) from employees e1 where 5 = (select count(distinct salary) from employees e2 where e2.salary >= e.salary);
ERROR 1054 (42S22): Unknown column 'e.salary' in 'where clause'
MariaDB [csd2204s18]> select distinct(salary) from employees e1 where 5 = (select count(distinct salary) from employees e2 where e2.salary >= e1.salary);
+----------+
| salary   |
+----------+
| 13000.00 |
+----------+
1 row in set (0.02 sec)

MariaDB [csd2204s18]> select distinct(salary) from employees e1 where 3 = (select count(distinct salary) from employees e2 where e2.salary <= e1.salary);
+---------+
| salary  |
+---------+
| 2400.00 |
+---------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> select * from(select * from employees ORDER BY employee_id desc limit 10) e1 ORDER BY employee_id asc;
+-------------+------------+-----------+----------+--------------+------------+------------+----------+----------------+------------+---------------+
| EMPLOYEE_ID | FIRST_NAME | LAST_NAME | EMAIL    | PHONE_NUMBER | HIRE_DATE  | JOB_ID     | SALARY   | COMMISSION_PCT | MANAGER_ID | DEPARTMENT_ID |
+-------------+------------+-----------+----------+--------------+------------+------------+----------+----------------+------------+---------------+
|         197 | Kevin      | Feeney    | KFEENEY  | 650.507.9822 | 1987-09-22 | SH_CLERK   |  3000.00 |           0.00 |        124 |            50 |
|         198 | Donald     | OConnell  | DOCONNEL | 650.507.9833 | 1987-09-23 | SH_CLERK   |  2600.00 |           0.00 |        124 |            50 |
|         199 | Douglas    | Grant     | DGRANT   | 650.507.9844 | 1987-09-24 | SH_CLERK   |  2600.00 |           0.00 |        124 |            50 |
|         200 | Jennifer   | Whalen    | JWHALEN  | 515.123.4444 | 1987-09-25 | AD_ASST    |  4400.00 |           0.00 |        101 |            10 |
|         201 | Michael    | Hartstein | MHARTSTE | 515.123.5555 | 1987-09-26 | MK_MAN     | 13000.00 |           0.00 |        100 |            20 |
|         202 | Pat        | Fay       | PFAY     | 603.123.6666 | 1987-09-27 | MK_REP     |  6000.00 |           0.00 |        201 |            20 |
|         203 | Susan      | Mavris    | SMAVRIS  | 515.123.7777 | 1987-09-28 | HR_REP     |  6500.00 |           0.00 |        101 |            40 |
|         204 | Hermann    | Baer      | HBAER    | 515.123.8888 | 1987-09-29 | PR_REP     | 10000.00 |           0.00 |        101 |            70 |
|         205 | Shelley    | Higgins   | SHIGGINS | 515.123.8080 | 1987-09-30 | AC_MGR     | 12000.00 |           0.00 |        101 |           110 |
|         206 | William    | Gietz     | WGIETZ   | 515.123.8181 | 1987-10-01 | AC_ACCOUNT |  8300.00 |           0.00 |        205 |           110 |
+-------------+------------+-----------+----------+--------------+------------+------------+----------+----------------+------------+---------------+
10 rows in set (0.00 sec)

MariaDB [csd2204s18]> select department_id,department_name FROM departments where department_id NOT IN (select distinct(department__id from employees);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'from employees)' at line 1
MariaDB [csd2204s18]> select department_id,department_name FROM departments where department_id NOT IN (select distinct(department__id) from employees);
ERROR 1054 (42S22): Unknown column 'department__id' in 'field list'
MariaDB [csd2204s18]> select department_id,department_name FROM departments where department_id NOT IN (select distinct(department_id) from employees);
+---------------+----------------------+
| department_id | department_name      |
+---------------+----------------------+
|           120 | Treasury             |
|           130 | Corporate Tax        |
|           140 | Control And Credit   |
|           150 | Shareholder Services |
|           160 | Benefits             |
|           170 | Manufacturing        |
|           180 | Construction         |
|           190 | Contracting          |
|           200 | Operations           |
|           210 | IT Support           |
|           220 | NOC                  |
|           230 | IT Helpdesk          |
|           240 | Government Sales     |
|           250 | Retail Sales         |
|           260 | Recruiting           |
|           270 | Payroll              |
+---------------+----------------------+
16 rows in set (0.00 sec)

MariaDB [csd2204s18]> select distinct(salary) from employees ORDER BY salary DESC LIMIT 3;
+----------+
| salary   |
+----------+
| 24000.00 |
| 17000.00 |
| 14000.00 |
+----------+
3 rows in set (0.01 sec)

MariaDB [csd2204s18]> exit;
