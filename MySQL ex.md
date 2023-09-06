Select all records where the emp_id column has the value 102.
mysql> select * from employee where salary = 75000;
+--------+------------+-----------+------------+------+--------+----------+-----------+
| emp_id | first_name | last_name | birth_day  | sex  | salary | super_id | branch_id |
+--------+------------+-----------+------------+------+--------+----------+-----------+
|    102 | Michael    | Scott     | 1964-03-15 | M    |  75000 |      100 |         2 |
+--------+------------+-----------+------------+------+--------+----------+-----------+
1 row in set (0.00 sec)

Select all records where the City column has the value 'Berlin' and the PostalCode column has the value 12209.

mysql> select * from employee where first_name = "Ola" and salary = 55000;
+--------+------------+-----------+------------+------+--------+----------+-----------+
| emp_id | first_name | last_name | birth_day  | sex  | salary | super_id | branch_id |
+--------+------------+-----------+------------+------+--------+----------+-----------+
|    104 | Ola        | Smith     | 1980-02-05 | F    |  55000 |      102 |         2 |
+--------+------------+-----------+------------+------+--------+----------+-----------+
1 row in set (0.00 sec)

Select all records where the City column has the value 'Berlin' or 'London'.

mysql> select* from employee where first_name = "Andy" or first_name = "Josh";
+--------+------------+-----------+------------+------+--------+----------+-----------+
| emp_id | first_name | last_name | birth_day  | sex  | salary | super_id | branch_id |
+--------+------------+-----------+------------+------+--------+----------+-----------+
|    106 | Josh       | Porter    | 1969-09-05 | M    |  78000 |      100 |         3 |
|    107 | Andy       | Bernard   | 1973-07-22 | M    |  65000 |      106 |         3 |
+--------+------------+-----------+------------+------+--------+----------+-----------+
2 rows in set (0.00 sec)

mysql> select * from employee where first_name = "Jim" or salary = 75000;
+--------+------------+-----------+------------+------+--------+----------+-----------+
| emp_id | first_name | last_name | birth_day  | sex  | salary | super_id | branch_id |
+--------+------------+-----------+------------+------+--------+----------+-----------+
|    102 | Michael    | Scott     | 1964-03-15 | M    |  75000 |      100 |         2 |
|    108 | Jim        | Halpert   | 1978-10-01 | M    |  71000 |      106 |         3 |
+--------+------------+-----------+------------+------+--------+----------+-----------+
2 rows in set (0.00 sec)

Select all records from the Customers table, sort the result alphabetically by the column City.

mysql> select * from employee order by first_name;
+--------+------------+-----------+------------+------+--------+----------+-----------+
| emp_id | first_name | last_name | birth_day  | sex  | salary | super_id | branch_id |
+--------+------------+-----------+------------+------+--------+----------+-----------+
|    107 | Andy       | Bernard   | 1973-07-22 | M    |  65000 |      106 |         3 |
|    100 | David      | Wallace   | 1967-11-17 | M    | 250000 |     NULL |         1 |
|    108 | Jim        | Halpert   | 1978-10-01 | M    |  71000 |      106 |         3 |
|    106 | Josh       | Porter    | 1969-09-05 | M    |  78000 |      100 |         3 |
|    102 | Michael    | Scott     | 1964-03-15 | M    |  75000 |      100 |         2 |
|    101 | Ola        | Smith     | 1961-05-11 | F    | 110000 |      100 |         1 |
|    103 | Ola        | Smith     | 1971-06-25 | F    |  63000 |      102 |         2 |
|    104 | Ola        | Smith     | 1980-02-05 | F    |  55000 |      102 |         2 |
|    105 | Stanley    | Hudson    | 1958-02-19 | M    |  69000 |      102 |         2 |
+--------+------------+-----------+------------+------+--------+----------+-----------+
9 rows in set (0.00 sec)

Select all records from the Customers table, sort the result reversed alphabetically by the column City.

mysql> select*from employee order by first_name desc;
+--------+------------+-----------+------------+------+--------+----------+-----------+
| emp_id | first_name | last_name | birth_day  | sex  | salary | super_id | branch_id |
+--------+------------+-----------+------------+------+--------+----------+-----------+
|    105 | Stanley    | Hudson    | 1958-02-19 | M    |  69000 |      102 |         2 |
|    101 | Ola        | Smith     | 1961-05-11 | F    | 110000 |      100 |         1 |
|    103 | Ola        | Smith     | 1971-06-25 | F    |  63000 |      102 |         2 |
|    104 | Ola        | Smith     | 1980-02-05 | F    |  55000 |      102 |         2 |
|    102 | Michael    | Scott     | 1964-03-15 | M    |  75000 |      100 |         2 |
|    106 | Josh       | Porter    | 1969-09-05 | M    |  78000 |      100 |         3 |
|    108 | Jim        | Halpert   | 1978-10-01 | M    |  71000 |      106 |         3 |
|    100 | David      | Wallace   | 1967-11-17 | M    | 250000 |     NULL |         1 |
|    107 | Andy       | Bernard   | 1973-07-22 | M    |  65000 |      106 |         3 |
+--------+------------+-----------+------------+------+--------+----------+-----------+
9 rows in set (0.00 sec)


Select all records from the Customers table, sort the result alphabetically, first by the column Country, then, by the column City.

mysql> select * from employee order by first_name, last_name;
+--------+------------+-----------+------------+------+--------+----------+-----------+
| emp_id | first_name | last_name | birth_day  | sex  | salary | super_id | branch_id |
+--------+------------+-----------+------------+------+--------+----------+-----------+
|    107 | Andy       | Bernard   | 1973-07-22 | M    |  65000 |      106 |         3 |
|    100 | David      | Wallace   | 1967-11-17 | M    | 250000 |     NULL |         1 |
|    108 | Jim        | Halpert   | 1978-10-01 | M    |  71000 |      106 |         3 |
|    106 | Josh       | Porter    | 1969-09-05 | M    |  78000 |      100 |         3 |
|    102 | Michael    | Scott     | 1964-03-15 | M    |  75000 |      100 |         2 |
|    101 | Ola        | Smith     | 1961-05-11 | F    | 110000 |      100 |         1 |
|    103 | Ola        | Smith     | 1971-06-25 | F    |  63000 |      102 |         2 |
|    104 | Ola        | Smith     | 1980-02-05 | F    |  55000 |      102 |         2 |
|    105 | Stanley    | Hudson    | 1958-02-19 | M    |  69000 |      102 |         2 |
+--------+------------+-----------+------------+------+--------+----------+-----------+
9 rows in set (0.00 sec)


Select all records from the Customers table, sort the result alphabetically, first by the column Country, then, by the column City.

mysql> select* from employee
    -> order by last_name, first_name;
+--------+------------+-----------+------------+------+--------+----------+-----------+
| emp_id | first_name | last_name | birth_day  | sex  | salary | super_id | branch_id |
+--------+------------+-----------+------------+------+--------+----------+-----------+
|    107 | Andy       | Bernard   | 1973-07-22 | M    |  65000 |      106 |         3 |
|    108 | Jim        | Halpert   | 1978-10-01 | M    |  71000 |      106 |         3 |
|    105 | Stanley    | Hudson    | 1958-02-19 | M    |  69000 |      102 |         2 |
|    106 | Josh       | Porter    | 1969-09-05 | M    |  78000 |      100 |         3 |
|    102 | Michael    | Scott     | 1964-03-15 | M    |  75000 |      100 |         2 |
|    101 | Ola        | Smith     | 1961-05-11 | F    | 110000 |      100 |         1 |
|    103 | Ola        | Smith     | 1971-06-25 | F    |  63000 |      102 |         2 |
|    104 | Ola        | Smith     | 1980-02-05 | F    |  55000 |      102 |         2 |
|    100 | David      | Wallace   | 1967-11-17 | M    | 250000 |     NULL |         1 |
+--------+------------+-----------+------------+------+--------+----------+-----------+
9 rows in set (0.00 sec)
mysql> insert into employee (emp_id, first_name, last_name, birth_day, sex, salary, super_id, branch_id) values
    -> (109, 'Jack', 'Jones', '1985-03-15', 'M', 6554656, 102, 1);
Query OK, 1 row affected (0.03 sec)

Insert a new record in the Customers table.
mysql> select* from employee;
+--------+------------+-----------+------------+------+---------+----------+-----------+
| emp_id | first_name | last_name | birth_day  | sex  | salary  | super_id | branch_id |
+--------+------------+-----------+------------+------+---------+----------+-----------+
|    100 | David      | Wallace   | 1967-11-17 | M    |  250000 |     NULL |         1 |
|    101 | Ola        | Smith     | 1961-05-11 | F    |  110000 |      100 |         1 |
|    102 | Michael    | Scott     | 1964-03-15 | M    |   75000 |      100 |         2 |
|    103 | Ola        | Smith     | 1971-06-25 | F    |   63000 |      102 |         2 |
|    104 | Ola        | Smith     | 1980-02-05 | F    |   55000 |      102 |         2 |
|    105 | Stanley    | Hudson    | 1958-02-19 | M    |   69000 |      102 |         2 |
|    106 | Josh       | Porter    | 1969-09-05 | M    |   78000 |      100 |         3 |
|    107 | Andy       | Bernard   | 1973-07-22 | M    |   65000 |      106 |         3 |
|    108 | Jim        | Halpert   | 1978-10-01 | M    |   71000 |      106 |         3 |
|    109 | Jack       | Jones     | 1985-03-15 | M    | 6554656 |      102 |         1 |
+--------+------------+-----------+------------+------+---------+----------+-----------+
10 rows in set (0.00 sec)

Select all records from the Customers where the PostalCode column is empty.

mysql> select * from employee where super_id is NULL;
+--------+------------+-----------+------------+------+--------+----------+-----------+
| emp_id | first_name | last_name | birth_day  | sex  | salary | super_id | branch_id |
+--------+------------+-----------+------------+------+--------+----------+-----------+
|    100 | David      | Wallace   | 1967-11-17 | M    | 250000 |     NULL |         1 |
+--------+------------+-----------+------------+------+--------+----------+-----------+
1 row in set (0.00 sec)

Select all records from the Customers where the PostalCode column is NOT empty.

mysql> select* from employee where super_id is not NULL;
+--------+------------+-----------+------------+------+---------+----------+-----------+
| emp_id | first_name | last_name | birth_day  | sex  | salary  | super_id | branch_id |
+--------+------------+-----------+------------+------+---------+----------+-----------+
|    101 | Ola        | Smith     | 1961-05-11 | F    |  110000 |      100 |         1 |
|    102 | Michael    | Scott     | 1964-03-15 | M    |   75000 |      100 |         2 |
|    103 | Ola        | Smith     | 1971-06-25 | F    |   63000 |      102 |         2 |
|    104 | Ola        | Smith     | 1980-02-05 | F    |   55000 |      102 |         2 |
|    105 | Stanley    | Hudson    | 1958-02-19 | M    |   69000 |      102 |         2 |
|    106 | Josh       | Porter    | 1969-09-05 | M    |   78000 |      100 |         3 |
|    107 | Andy       | Bernard   | 1973-07-22 | M    |   65000 |      106 |         3 |
|    108 | Jim        | Halpert   | 1978-10-01 | M    |   71000 |      106 |         3 |
|    109 | Jack       | Jones     | 1985-03-15 | M    | 6554656 |      102 |         1 |
+--------+------------+-----------+------------+------+---------+----------+-----------+
9 rows in set (0.00 sec)




