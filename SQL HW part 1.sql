
/*Создать таблицу employees
- id. serial,  primary key,
- employee_name. Varchar(50), not null*/
CREATE TABLE employees(
id SERIAL PRIMARY KEY,
employee_name varchar(50) NOT NULL
);


/*Наполнить таблицу employee 70 строками*/
INSERT INTO employees(employee_name)
VALUES('Reggie Batey'), 
('Clara Poore'), 
('Tammy Galindo'), 
('Rickey Jones'), 
('Jill Anspach'), 
('Lacy Racicot'), 
('David Macias'), 
('Jessica Manns'), 
('Amber Holcomb'), 
('Betty Wells'), 
('Miguel Fletcher'), 
('Joseph Hodges'), 
('Ida Bohannon'), 
('Cindy Merrifield'), 
('Mary Dowell'), 
('Marie Thomas'), 
('Donald Fierro'), 
('Anna Wick'), 
('Robert Harian'), 
('Michael Mark'), 
('Lucius Patterson'), 
('Lorna Rose'), 
('Karen Santiago'), 
('Peggy Beachler'), 
('Chester Baird'), 
('Ronda Colley'), 
('Robert Chapman'), 
('Sandra Hibbard'), 
('Steven Pagano'), 
('Ramona Russell'), 
('Ryan Morgan'), 
('Shannon Daugherty'), 
('Charlene Little'), 
('Steve Lewandowski'), 
('Donnie Shoemaker'), 
('Veronica Treto'), 
('Jonathon Belanger'), 
('William Hughes'), 
('Courtney Alston'), 
('Isaac Walters'), 
('Leon Ashcraft'), 
('Daniel Patterson'), 
('Randall Phillips'), 
('James Williams'), 
('Nancy Searles'), 
('Edward Hilliard'), 
('Joel Vandevelde'), 
('Nancy Bravo'), 
('Jesse Clark'), 
('Gregory Magelssen'), 
('Ella Cortez'), 
('Michael Diaz'), 
('Robert Walsh'), 
('Valorie Seibert'), 
('Yoshiko Miller'), 
('Timothy Johnson'), 
('Lita Webb'), 
('Lindsay Barrera'), 
('Jacqulyn Matthews'), 
('Lee Rehart'), 
('Fred Spencer'), 
('Melinda Webster'), 
('Shawn Pretti'), 
('Betty Schaefer'), 
('Barbara Teets'), 
('Patricia Tomas'), 
('Mattie Kelley'), 
('Mary Yates'), 
('Andrea Croes'), 
('Amanda Riley');



/*Создать таблицу salary
- id. Serial  primary key,
- monthly_salary. Int, not NULL*/
CREATE TABLE salary(
id SERIAL PRIMARY KEY,
monthly_salary INT NOT NULL
);



/*Наполнить таблицу salary 16 строками*/
INSERT INTO salary(monthly_salary)
VALUES(1000), (1100), (1200), (1300), (1400), (1500),
(1600), (1700), (1800), (1900), (2000), (2100), (2200),
(2300), (2400), (2500);



/*Создать таблицу employee_salary
- id. Serial  primary key,
- employee_id. Int, not null, unique
- salary_id. Int, not null
*/
CREATE TABLE employee_salary(
id SERIAL PRIMARY KEY,
employee_id INT NOT NULL,
salary_id INT NOT NULL
);



/*Наполнить таблицу employee_salary 40 строками:
в 10 строк из 40 вставить несуществующие employee_id*/
INSERT INTO employee_salary (employee_id, salary_id)
VALUES (8, 1),
(39, 2),
(31, 3),
(74, 4),
(13, 5),
(12, 6),
(71, 7),
(15, 8),
(23, 9),
(77, 10),
(37, 11),
(9, 12),
(79, 13),
(14, 14),
(28, 15),
(20, 16),
(7, 17),
(32, 18),
(10, 19),
(22, 20),
(5, 21),
(16, 22),
(72, 23),
(25, 24),
(75, 25),
(11, 26),
(27, 27),
(78, 28),
(24, 29),
(3, 30),
(4, 31),
(6, 32),
(38, 33),
(40, 34),
(80, 35),
(30, 36),
(29, 37),
(73, 38),
(76, 39),
(1, 40)



/*Создать таблицу roles
- id. Serial  primary key,
- role_name. int, not null, unique*/
CREATE TABLE roles(
id SERIAL PRIMARY KEY,
role_name INT NOT NULL UNIQUE
);



/*Поменять тип столба role_name с int на varchar(30)*/
ALTER TABLE roles
ALTER COLUMN role_name
TYPE VARCHAR(30);



/*Наполнить таблицу roles 20 строками*/
INSERT INTO roles(role_name)
VALUES ('Junior Python developer'),
('Middle Python developer'),
('Senior Python developer'),
('Junior Java developer'),
('Middle Java developer'),
('Senior Java developer'),
('Junior JavaScript developer'),
('Middle JavaScript developer'),
('Senior JavaScript developer'),
('Junior Manual QA engineer'),
('Middle Manual QA engineer'),
('Senior Manual QA engineer'),
('Project Manager'),
('Designer'),
('HR'),
('CEO'),
('Sales manager'),
('Junior Automation QA engineer'),
('Middle Automation QA engineer'),
('Senior Automation QA engineer');



/*Создать таблицу roles_employee
- id. Serial  primary key,
- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
- role_id. Int, not null (внешний ключ для таблицы roles, поле id)
*/
CREATE TABLE roles_employee(
Id SERIAL PRIMARY KEY,
employee_id INT NOT NULL UNIQUE, 
role_id INT NOT NULL
);


/*Наполнить таблицу roles_employee 40 строками*/
INSERT INTO roles_employee(employee_id, role_id)
VALUES (7, 1),
(30, 2),
(37, 3),
(19, 4),
(36, 5),
(4, 6),
(5, 7),
(39, 8),
(13, 9),
(32, 10),
(34, 11),
(25, 12),
(10, 13),
(26, 14),
(29, 15),
(11, 16),
(3, 17),
(21, 18),
(1, 19),
(24, 20),
(14, 21),
(33, 22),
(20, 23),
(17, 24),
(8, 25),
(2, 26),
(18, 27),
(31, 28),
(15, 29),
(35, 30),
(6, 31),
(40, 32),
(9, 33),
(27, 34),
(22, 35),
(38, 36),
(23, 37),
(28, 38),
(16, 39),
(12, 40);



























