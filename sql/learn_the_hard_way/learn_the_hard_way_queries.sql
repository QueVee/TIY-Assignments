Last login: Mon Jan 26 08:49:19 on ttys000
Kellys-MacBook-Pro:~ Kelly$ ls
Kellys-MacBook-Pro:~ Kelly$ cd TIY-Assignments
Kellys-MacBook-Pro:TIY-Assignments Kelly$ ls
LICENSE		README.md	html		sql
Kellys-MacBook-Pro:TIY-Assignments Kelly$ cd sql
Kellys-MacBook-Pro:sql Kelly$ ls
learn_the_hard_way	nfl
Kellys-MacBook-Pro:sql Kelly$ cd learn_the_hard_way
Kellys-MacBook-Pro:learn_the_hard_way Kelly$ sqlite3 ex1.db < ex1.sql
Kellys-MacBook-Pro:learn_the_hard_way Kelly$ ls -l
total 24
-rw-r--r--  1 Kelly  staff  8192 Jan 26 17:21 ex1.db
-rw-r--r--  1 Kelly  staff   101 Jan 26 17:21 ex1.sql
Kellys-MacBook-Pro:learn_the_hard_way Kelly$ rm ex1.db
Kellys-MacBook-Pro:learn_the_hard_way Kelly$ ls
ex1.sql
Kellys-MacBook-Pro:learn_the_hard_way Kelly$ sqlite3 ex1.db < ex1_lowercase.sql
Kellys-MacBook-Pro:learn_the_hard_way Kelly$ ls -l
total 32
-rw-r--r--  1 Kelly  staff  8192 Jan 26 17:28 ex1.db
-rw-r--r--  1 Kelly  staff   101 Jan 26 17:21 ex1.sql
-rw-r--r--  1 Kelly  staff   101 Jan 26 17:27 ex1_lowercase.sql
Kellys-MacBook-Pro:learn_the_hard_way Kelly$ sqlite3 ex2.db < ex1_lowercase.sql
Kellys-MacBook-Pro:learn_the_hard_way Kelly$ .schema
-bash: .schema: command not found
Kellys-MacBook-Pro:learn_the_hard_way Kelly$ sqlite3 ex2.db
SQLite version 3.8.5 2014-08-15 22:37:57
Enter ".help" for usage hints.
sqlite> .schema
CREATE TABLE person (
  id integer primary key,
  first_name text,
  last_name text,
  age integer,
  birth_date date,
  weight integer,
  nic_name text
);
sqlite> .exit
Kellys-MacBook-Pro:learn_the_hard_way Kelly$ rm ex2.db
Kellys-MacBook-Pro:learn_the_hard_way Kelly$ sqlite3 ex2.db < ex2.sql
Kellys-MacBook-Pro:learn_the_hard_way Kelly$ sqlite3 ex2.db
SQLite version 3.8.5 2014-08-15 22:37:57
Enter ".help" for usage hints.
sqlite> .schema
sqlite> .exit
Kellys-MacBook-Pro:learn_the_hard_way Kelly$ ls
ex1.db			ex1_lowercase.sql	ex2.sql
ex1.sql			ex2.db
Kellys-MacBook-Pro:learn_the_hard_way Kelly$ subl ex2.sql
Kellys-MacBook-Pro:learn_the_hard_way Kelly$ sqlite3 ex2.db < ex2.sql
Kellys-MacBook-Pro:learn_the_hard_way Kelly$ sqlite3 ex2.db < ex2.sql
Kellys-MacBook-Pro:learn_the_hard_way Kelly$ sqlite3 ex2.db
SQLite version 3.8.5 2014-08-15 22:37:57
Enter ".help" for usage hints.
sqlite> .schema
CREATE TABLE person (
  id INTEGER PRIMARY KEY,
  first_name TEXT,
  last_name TEXT,
  age INTEGER
);
CREATE TABLE pet (
  id INTEGER PRIMARY KEY,
  name TEXT,
  breed TEXT,
  age INTEGER,
  dead INTEGER
);
CREATE TABLE person_pet (
  person_id INTEGER,
  pet_id INTEGER
);
sqlite> insert into person (id, first_name, last_name, age)
   ...> values (0, "Zed", "Shaw", 37);
sqlite> insert into pet (id, name, breed, age, dead)
   ...> values (0, "Fluffy", "Unicorn", 1000, 0);
sqlite> insert into pet values (1, "Gigantor", "Robot", 1, 1);
sqlite> .exit
Kellys-MacBook-Pro:learn_the_hard_way Kelly$ sqlite3 ex2.db
SQLite version 3.8.5 2014-08-15 22:37:57
Enter ".help" for usage hints.
sqlite> .schema
CREATE TABLE person (
  id INTEGER PRIMARY KEY,
  first_name TEXT,
  last_name TEXT,
  age INTEGER
);
CREATE TABLE pet (
  id INTEGER PRIMARY KEY,
  name TEXT,
  breed TEXT,
  age INTEGER,
  dead INTEGER
);
CREATE TABLE person_pet (
  person_id INTEGER,
  pet_id INTEGER
);
sqlite> .exit
Kellys-MacBook-Pro:learn_the_hard_way Kelly$ sqlite3 ex3.db < ex2.sql
Kellys-MacBook-Pro:learn_the_hard_way Kelly$ sqlite3 -echo ex3.db < ex3.sql
-bash: ex3.sql: No such file or directory
Kellys-MacBook-Pro:learn_the_hard_way Kelly$ sqlite3 -echo ex3.db < ex3.sql
Error: near line 1: table person already exists

Error: near line 8: table pet already exists

Error: near line 16: table person_pet already exists

Kellys-MacBook-Pro:learn_the_hard_way Kelly$ sqlite3 ex3.db < ex2.sql
Kellys-MacBook-Pro:learn_the_hard_way Kelly$ sqlite3 -echo ex3.db < ex3.sql
-bash: ex3.sql: No such file or directory
Kellys-MacBook-Pro:learn_the_hard_way Kelly$ ls
ex1.db			ex1_lowercase.sql	ex2.sql
ex1.sql			ex2.db			ex3.db
Kellys-MacBook-Pro:learn_the_hard_way Kelly$ sqlite3 -echo ex3.db < ex3.sql
-bash: ex3.sql: No such file or directory
Kellys-MacBook-Pro:learn_the_hard_way Kelly$ sqlite3 -echo ex3.db < ex3.sql
Error: near line 1: table person already exists

Error: near line 8: table pet already exists

Error: near line 16: table person_pet already exists

INSERT INTO person (id, first_name, last_name, age)
  VALUES (0, "Zed", "Shaw", 37);

INSERT INTO pet (id, name, breed, age, dead)
  VALUES (0, "Fluffy", "Unicorn", 1000, 0);

INSERT INTO pet VALUES (1, "Gigantor", "Robot", 1, 1);
Kellys-MacBook-Pro:learn_the_hard_way Kelly$ sqlite3 -echo ex3.db < ex4.sql
INSERT INTO person_pet (person_id, pet_id) VALUES (0, 0);
INSERT INTO person_pet VALUES (0, 1);
Kellys-MacBook-Pro:learn_the_hard_way Kelly$ sqlite3 -echo ex3.db < ex5.sql
SELECT * FROM person;
0|Zed|Shaw|37

SELECT name, age FROM pet;
Fluffy|1000
Gigantor|1

SELECT name, age FROM pet WHERE dead = 0;
Fluffy|1000

SELECT * FROM person WHERE first_name != "Zed";
Kellys-MacBook-Pro:learn_the_hard_way Kelly$ sqlite3 -column -header ex3.db < ex6.sql
id          name        age         dead      
----------  ----------  ----------  ----------
0           Fluffy      1000        0         
1           Gigantor    1           1         
Kellys-MacBook-Pro:learn_the_hard_way Kelly$ sqlite3 -column -header ex3.db < ex6.sql
id          name        age         dead      
----------  ----------  ----------  ----------
0           Fluffy      1000        0         
1           Gigantor    1           1         
Kellys-MacBook-Pro:learn_the_hard_way Kelly$ sqlite3 -column -header ex3.db < ex6.sql
id          name        age         dead      
----------  ----------  ----------  ----------
0           Fluffy      1000        0         
1           Gigantor    1           1         
Kellys-MacBook-Pro:learn_the_hard_way Kelly$ sqlite3 -column -header ex3.db < ex7.sql
name        age       
----------  ----------
Gigantor    1         
Error: near line 2: near "SELECT": syntax error
Error: near line 4: UNIQUE constraint failed: pet.id
id          name        breed       age         dead      
----------  ----------  ----------  ----------  ----------
0           Fluffy      Unicorn     1000        0         
1           Gigantor    Robot       1           1         
Kellys-MacBook-Pro:learn_the_hard_way Kelly$ 
