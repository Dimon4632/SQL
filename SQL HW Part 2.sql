/*Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами*/
SELECT 
  e.employee_name, 
  s.monthly_salary 
FROM 
  employees e 
  JOIN employee_salary es ON e.id = es.employee_id 
  JOIN salary s ON es.salary_id = s.id

/*Вывести всех работников у которых ЗП меньше 2000*/
SELECT 
  e.employee_name, 
  s.monthly_salary 
FROM 
  employees e 
  JOIN employee_salary es ON e.id = es.employee_id 
  JOIN salary s ON es.salary_id = s.id 
WHERE 
  s.monthly_salary < 2000


/*Вывести все зарплатные позиции, но работник по ним не назначен.
 * (ЗП есть, но не понятно кто её получает.)*/
SELECT 
  es.employee_id 
FROM 
  employees e FULL 
  JOIN employee_salary es ON e.id = es.employee_id 
WHERE 
  es.employee_id != e.id 
ORDER BY 
  es.employee_id



/*Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен.
 * (ЗП есть, но не понятно кто её получает.)*/


/*Найти всех работников кому не начислена ЗП*/

/*Вывести всех работников с названиями их должности*/
SELECT 
  e.employee_name, 
  role_name 
FROM 
  employees e 
  JOIN roles_employee re ON e.id = re.employee_id 
  JOIN roles r ON re.role_id = r.id


/*Вывести имена и должность только Java разработчиков*/
SELECT 
  e.employee_name, 
  role_name 
FROM 
  employees e 
  JOIN roles_employee re ON e.id = re.employee_id 
  JOIN roles r ON re.role_id = r.id 
WHERE 
  r.role_name LIKE '% Java developer'


/*Вывести имена и должность только Python разработчиков*/
SELECT 
  e.employee_name, 
  role_name 
FROM 
  employees e 
  JOIN roles_employee re ON e.id = re.employee_id 
  JOIN roles r ON re.role_id = r.id 
WHERE 
  r.role_name LIKE '% Python developer'


/*Вывести имена и должность всех QA инженеров*/
SELECT 
  e.employee_name, 
  role_name 
FROM 
  employees e 
  JOIN roles_employee re ON e.id = re.employee_id 
  JOIN roles r ON re.role_id = r.id 
WHERE 
  r.role_name LIKE '% QA engineer'


/*Вывести имена и должность ручных QA инженеров*/
SELECT 
  e.employee_name, 
  role_name 
FROM 
  employees e 
  JOIN roles_employee re ON e.id = re.employee_id 
  JOIN roles r ON re.role_id = r.id 
WHERE 
  r.role_name LIKE '% Manual QA engineer'


/*Вывести имена и должность автоматизаторов QA*/
SELECT 
  e.employee_name, 
  role_name 
FROM 
  employees e 
  JOIN roles_employee re ON e.id = re.employee_id 
  JOIN roles r ON re.role_id = r.id 
WHERE 
  r.role_name LIKE '% Automation QA engineer'


/*Вывести имена и зарплаты Junior специалистов*/
SELECT 
  r.role_name, 
  e.employee_name, 
  monthly_salary 
FROM 
  employees e 
  JOIN employee_salary es ON es.employee_id = e.id 
  JOIN salary s ON es.salary_id = s.id 
  JOIN roles_employee re ON e.id = re.employee_id 
  JOIN roles r ON re.role_id = r.id 
WHERE 
  r.role_name LIKE 'Junior %'


  /*Вывести имена и зарплаты Middle специалистов*/
  SELECT 
  r.role_name, 
  e.employee_name, 
  monthly_salary 
FROM 
  employees e 
  JOIN employee_salary es ON es.employee_id = e.id 
  JOIN salary s ON es.salary_id = s.id 
  JOIN roles_employee re ON e.id = re.employee_id 
  JOIN roles r ON re.role_id = r.id 
WHERE 
  r.role_name LIKE 'Middle %'
  

/*Вывести имена и зарплаты Senior специалистов*/
SELECT 
  r.role_name, 
  e.employee_name, 
  monthly_salary 
FROM 
  employees e 
  JOIN employee_salary es ON es.employee_id = e.id 
  JOIN salary s ON es.salary_id = s.id 
  JOIN roles_employee re ON e.id = re.employee_id 
  JOIN roles r ON re.role_id = r.id 
WHERE 
  r.role_name LIKE 'Senior %'
  

/*Вывести зарплаты Java разработчиков*/
SELECT 
  r.role_name, 
  e.employee_name, 
  monthly_salary 
FROM 
  employees e 
  JOIN employee_salary es ON es.employee_id = e.id 
  JOIN salary s ON es.salary_id = s.id 
  JOIN roles_employee re ON e.id = re.employee_id 
  JOIN roles r ON re.role_id = r.id 
WHERE 
  r.role_name LIKE '% Java developer'
  

/*Вывести зарплаты Python разработчиков*/
SELECT 
  r.role_name, 
  e.employee_name, 
  monthly_salary 
FROM 
  employees e 
  JOIN employee_salary es ON es.employee_id = e.id 
  JOIN salary s ON es.salary_id = s.id 
  JOIN roles_employee re ON e.id = re.employee_id 
  JOIN roles r ON re.role_id = r.id 
WHERE 
  r.role_name LIKE '% Python developer'
  

/*Вывести имена и зарплаты Junior Python разработчиков*/
SELECT 
  r.role_name, 
  e.employee_name, 
  monthly_salary 
FROM 
  employees e 
  JOIN employee_salary es ON es.employee_id = e.id 
  JOIN salary s ON es.salary_id = s.id 
  JOIN roles_employee re ON e.id = re.employee_id 
  JOIN roles r ON re.role_id = r.id 
WHERE 
  r.role_name LIKE 'Junior Python developer'

/*Вывести имена и зарплаты Middle JS разработчиков*/
SELECT 
  r.role_name, 
  e.employee_name, 
  monthly_salary 
FROM 
  employees e 
  JOIN employee_salary es ON es.employee_id = e.id 
  JOIN salary s ON es.salary_id = s.id 
  JOIN roles_employee re ON e.id = re.employee_id 
  JOIN roles r ON re.role_id = r.id 
WHERE 
  r.role_name LIKE 'Middle JavaScript developer'

/*Вывести имена и зарплаты Senior Java разработчиков*/
SELECT 
  r.role_name, 
  e.employee_name, 
  monthly_salary 
FROM 
  employees e 
  JOIN employee_salary es ON es.employee_id = e.id 
  JOIN salary s ON es.salary_id = s.id 
  JOIN roles_employee re ON e.id = re.employee_id 
  JOIN roles r ON re.role_id = r.id 
WHERE 
  r.role_name LIKE 'Senior JavaScript developer'
  

/*Вывести зарплаты Junior QA инженеров*/
SELECT 
  r.role_name, 
  e.employee_name, 
  monthly_salary 
FROM 
  employees e 
  JOIN employee_salary es ON es.employee_id = e.id 
  JOIN salary s ON es.salary_id = s.id 
  JOIN roles_employee re ON e.id = re.employee_id 
  JOIN roles r ON re.role_id = r.id 
WHERE 
  r.role_name LIKE 'Junior % QA engineer'
  

/*Вывести среднюю зарплату всех Junior специалистов*/
SELECT 
  round(avg(s.monthly_salary)) AS average_junior_salary 
FROM 
  salary s 
JOIN employee_salary es ON s.id = es.salary_id 
JOIN roles_employee re ON es.employee_id = re.employee_id 
JOIN roles r ON re.role_id = r.id  
WHERE 
  r.role_name LIKE 'Junior %'
  

/*Вывести сумму зарплат JS разработчиков*/
SELECT 
  round(sum(s.monthly_salary), 2) AS summary_JS_salary
FROM 
  salary s 
JOIN employee_salary es ON s.id = es.salary_id 
JOIN roles_employee re ON es.employee_id = re.employee_id 
JOIN roles r ON re.role_id = r.id  
WHERE 
  r.role_name LIKE '% JavaScript developer'
  

/*Вывести минимальную ЗП QA инженеров*/
SELECT 
  round(min(s.monthly_salary), 2) AS min_QA_salary
FROM 
  salary s 
JOIN employee_salary es ON s.id = es.salary_id 
JOIN roles_employee re ON es.employee_id = re.employee_id 
JOIN roles r ON re.role_id = r.id  
WHERE 
  r.role_name LIKE '% QA engineer'
  

/*Вывести максимальную ЗП QA инженеров*/
SELECT 
  round(max(s.monthly_salary), 2) AS max_QA_salary
FROM 
  salary s 
JOIN employee_salary es ON s.id = es.salary_id 
JOIN roles_employee re ON es.employee_id = re.employee_id 
JOIN roles r ON re.role_id = r.id  
WHERE 
  r.role_name LIKE '% QA engineer'
  

/*Вывести количество QA инженеров*/
SELECT 
  count(role_name) AS total_QA 
FROM 
  roles r 
  JOIN roles_employee re ON r.id = re.role_id 
WHERE 
  r.role_name LIKE '% QA engineer'
 	
  	
/*Вывести количество Middle специалистов*/
SELECT
  	count(role_name) AS total_Middle
FROM
	roles r 
JOIN roles_employee re ON r.id = re.role_id 
WHERE r.role_name LIKE 'Middle %'


/*Вывести количество разработчиков*/
SELECT 
  count(role_name) AS summary_developer 
FROM 
  roles r 
  JOIN roles_employee re ON r.id = re.role_id 
WHERE 
  r.role_name LIKE '% developer'


/*Вывести фонд (сумму) зарплаты разработчиков*/
SELECT 
  sum(s.monthly_salary) AS summary_salary_developer 
FROM 
  roles r 
  JOIN roles_employee re ON r.id = re.role_id 
  JOIN employee_salary es ON re.employee_id = es.employee_id 
  JOIN salary s ON es.salary_id = s.id 
WHERE 
  r.role_name LIKE '% developer'


/* Вывести имена, должности и ЗП всех специалистов по возрастанию*/
SELECT 
  e.employee_name, 
  r.role_name, 
  s.monthly_salary 
FROM 
  roles r 
  JOIN roles_employee re ON r.id = re.role_id 
  JOIN employees e ON re.employee_id = e.id 
  JOIN employee_salary es ON re.employee_id = es.employee_id 
  JOIN salary s ON es.salary_id = s.id 
ORDER BY 
  s.monthly_salary


/*Вывести имена, должности и ЗП всех специалистов по возрастанию 
 * у специалистов у которых ЗП от 1700 до 2300*/
SELECT 
  e.employee_name, 
  r.role_name, 
  s.monthly_salary 
FROM 
  roles r 
  JOIN roles_employee re ON r.id = re.role_id 
  JOIN employees e ON re.employee_id = e.id 
  JOIN employee_salary es ON re.employee_id = es.employee_id 
  JOIN salary s ON es.salary_id = s.id 
WHERE s.monthly_salary BETWEEN 1700 AND 2300
ORDER BY 
  s.monthly_salary


/*Вывести имена, должности и ЗП всех специалистов по возрастанию
 * у специалистов у которых ЗП меньше 2300*/
SELECT 
  e.employee_name, 
  r.role_name, 
  s.monthly_salary 
FROM 
  roles r 
  JOIN roles_employee re ON r.id = re.role_id 
  JOIN employees e ON re.employee_id = e.id 
  JOIN employee_salary es ON re.employee_id = es.employee_id 
  JOIN salary s ON es.salary_id = s.id 
WHERE s.monthly_salary < 2300
ORDER BY 
  s.monthly_salary
  

/*Вывести имена, должности и ЗП всех специалистов по возрастанию
 * у специалистов у которых ЗП равна 1100, 1500, 2000*/
  SELECT 
  e.employee_name, 
  r.role_name, 
  s.monthly_salary 
FROM 
  roles r 
  JOIN roles_employee re ON r.id = re.role_id 
  JOIN employees e ON re.employee_id = e.id 
  JOIN employee_salary es ON re.employee_id = es.employee_id 
  JOIN salary s ON es.salary_id = s.id 
WHERE s.monthly_salary IN (1100, 1500, 2000)
ORDER BY 
  s.monthly_salary











