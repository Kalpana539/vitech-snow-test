

create database vitech;

CREATE TABLE employees (
	employee_id INT IDENTITY(1,1) PRIMARY KEY,
	first_name VARCHAR (20) DEFAULT NULL,
	last_name VARCHAR (25) NOT NULL,
	email VARCHAR (100) NOT NULL,
	phone_number VARCHAR (20) DEFAULT NULL,
	hire_date DATE NOT NULL,
	job_id INT NOT NULL,
	salary DECIMAL (8, 2) NOT NULL,
	manager_id INT DEFAULT NULL,
	department_id INT DEFAULT NULL
);


INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (100,'Steven','King','steven.king@sqltutorial.org','515.123.4567','1987-06-17',4,24000.00,NULL,9);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (101,'Neena','Kochhar','neena.kochhar@sqltutorial.org','515.123.4568','1989-09-21',5,17000.00,100,9);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (102,'Lex','De Haan','lex.de haan@sqltutorial.org','515.123.4569','1993-01-13',5,17000.00,100,9);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (103,'Alexander','Hunold','alexander.hunold@sqltutorial.org','590.423.4567','1990-01-03',9,9000.00,102,6);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (104,'Bruce','Ernst','bruce.ernst@sqltutorial.org','590.423.4568','1991-05-21',9,6000.00,103,6);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (105,'David','Austin','david.austin@sqltutorial.org','590.423.4569','1997-06-25',9,4800.00,103,6);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (106,'Valli','Pataballa','valli.pataballa@sqltutorial.org','590.423.4560','1998-02-05',9,4800.00,103,6);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (107,'Diana','Lorentz','diana.lorentz@sqltutorial.org','590.423.5567','1999-02-07',9,4200.00,103,6);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (108,'Nancy','Greenberg','nancy.greenberg@sqltutorial.org','515.124.4569','1994-08-17',7,12000.00,101,10);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (109,'Daniel','Faviet','daniel.faviet@sqltutorial.org','515.124.4169','1994-08-16',6,9000.00,108,10);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (110,'John','Chen','john.chen@sqltutorial.org','515.124.4269','1997-09-28',6,8200.00,108,10);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (111,'Ismael','Sciarra','ismael.sciarra@sqltutorial.org','515.124.4369','1997-09-30',6,7700.00,108,10);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (112,'Jose Manuel','Urman','jose manuel.urman@sqltutorial.org','515.124.4469','1998-03-07',6,7800.00,108,10);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (113,'Luis','Popp','luis.popp@sqltutorial.org','515.124.4567','1999-12-07',6,6900.00,108,10);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (114,'Den','Raphaely','den.raphaely@sqltutorial.org','515.127.4561','1994-12-07',14,11000.00,100,3);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (115,'Alexander','Khoo','alexander.khoo@sqltutorial.org','515.127.4562','1995-05-18',13,3100.00,114,3);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (116,'Shelli','Baida','shelli.baida@sqltutorial.org','515.127.4563','1997-12-24',13,2900.00,114,3);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (117,'Sigal','Tobias','sigal.tobias@sqltutorial.org','515.127.4564','1997-07-24',13,2800.00,114,3);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (118,'Guy','Himuro','guy.himuro@sqltutorial.org','515.127.4565','1998-11-15',13,2600.00,114,3);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (119,'Karen','Colmenares','karen.colmenares@sqltutorial.org','515.127.4566','1999-08-10',13,2500.00,114,3);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (120,'Matthew','Weiss','matthew.weiss@sqltutorial.org','650.123.1234','1996-07-18',19,8000.00,100,5);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (121,'Adam','Fripp','adam.fripp@sqltutorial.org','650.123.2234','1997-04-10',19,8200.00,100,5);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (122,'Payam','Kaufling','payam.kaufling@sqltutorial.org','650.123.3234','1995-05-01',19,7900.00,100,5);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (123,'Shanta','Vollman','shanta.vollman@sqltutorial.org','650.123.4234','1997-10-10',19,6500.00,100,5);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (126,'Irene','Mikkilineni','irene.mikkilineni@sqltutorial.org','650.124.1224','1998-09-28',18,2700.00,120,5);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (145,'John','Russell','john.russell@sqltutorial.org',NULL,'1996-10-01',15,14000.00,100,8);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (146,'Karen','Partners','karen.partners@sqltutorial.org',NULL,'1997-01-05',15,13500.00,100,8);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (176,'Jonathon','Taylor','jonathon.taylor@sqltutorial.org',NULL,'1998-03-24',16,8600.00,100,8);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (177,'Jack','Livingston','jack.livingston@sqltutorial.org',NULL,'1998-04-23',16,8400.00,100,8);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (178,'Kimberely','Grant','kimberely.grant@sqltutorial.org',NULL,'1999-05-24',16,7000.00,100,8);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (179,'Charles','Johnson','charles.johnson@sqltutorial.org',NULL,'2000-01-04',16,6200.00,100,8);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (192,'Sarah','Bell','sarah.bell@sqltutorial.org','650.501.1876','1996-02-04',17,4000.00,123,5);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (193,'Britney','Everett','britney.everett@sqltutorial.org','650.501.2876','1997-03-03',17,3900.00,123,5);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (200,'Jennifer','Whalen','jennifer.whalen@sqltutorial.org','515.123.4444','1987-09-17',3,4400.00,101,1);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (201,'Michael','Hartstein','michael.hartstein@sqltutorial.org','515.123.5555','1996-02-17',10,13000.00,100,2);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (202,'Pat','Fay','pat.fay@sqltutorial.org','603.123.6666','1997-08-17',11,6000.00,201,2);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (203,'Susan','Mavris','susan.mavris@sqltutorial.org','515.123.7777','1994-06-07',8,6500.00,101,4);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (204,'Hermann','Baer','hermann.baer@sqltutorial.org','515.123.8888','1994-06-07',12,10000.00,101,7);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (205,'Shelley','Higgins','shelley.higgins@sqltutorial.org','515.123.8080','1994-06-07',2,12000.00,101,11);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (206,'William','Gietz','william.gietz@sqltutorial.org','515.123.8181','1994-06-07',1,8300.00,205,11);


select count(*)  from employees ;



select *  from employees ;


---------------------------------------------
select * from  employees ;

select top 5 * from  employees ;

select   first_name , salary from  employees ;


select   first_name , salary from  employees 
  order by salary  asc ;

  select   first_name , salary from  employees 
  order by salary  desc ;


    select   first_name , salary from  employees 
  order by first_name  asc ;

 --0-9    9-0
  --a-z    z-a 
  
    select   first_name , salary from  employees 
  order by first_name  desc ;

     select   first_name , salary from  employees 
     where first_name = 'Michael';

     select   first_name , salary from  employees 
     where first_name like 'S%';


      select   first_name , salary from  employees 
     where first_name like '%a';


     
      select   *  from  employees 
      where job_id = 5 or 
            job_id = 4 or 
            job_id = 10  ;


      
      select   *  from  employees 
      where job_id in (5,4,10,2) ;


        select   *  from  employees 
      where job_id in (5,4,10,2) and 
             salary >= 15000 ;


  
        select   *  from  employees 
      where salary != 17000 
            and salary != 24000 ;


       select   *  from  employees 
      where salary not in (17000 ,24000) ;


    select   distinct (department_id)  from  employees ;


    select department_id  from  employees
       group by department_id ;


    select department_id,count(*) as cnt from  employees
       group by department_id 
       order by department_id ;


    select department_id,max(salary)  from  employees
       group by department_id 
       order by department_id ;


      select department_id,min(salary)  from  employees
       group by department_id 
       order by department_id ;


           select department_id,avg(salary)  from  employees
       group by department_id  ;



       select first_name, count(*) as cnt from employees
       group by first_name 
       order by 2 desc ;

       
       select first_name, count(*) as cnt from employees
       group by first_name 
       having count(*)  >=2 
   
          select first_name, count(*) as cnt from employees
          where department_id in (2,3,45,6)
          group by first_name 
          having count(*)  >=2 


               select first_name, count(*) as cnt from employees
          where department_id in (2,3,45,6)
        --  group by first_name 
          having count(*)  >=2 
      
     select first_name, count(*) as cnt from employees
          where department_id in (2,3,45,6)
          group by first_name 
       ---   having count(*)  >=2 


       
select department_id , count(department_id) from employees 
  where department_id in (10,3,7)
       group by department_id 
       having count(department_id)  > 1 
       

    
    

      select count(*)  from employees ;

        select count(1)  from employees ;


    select count(manager_id)  from employees ;


    select upper(first_name) from employees;

       select lower(first_name) from employees;


-- =============================================
-- 10 STRING FUNCTIONS
-- =============================================

-- 1. UPPER - Convert to uppercase
SELECT first_name, UPPER(first_name) AS upper_name FROM VITECH.PUBLIC.EMPLOYEES;

-- 2. LOWER - Convert to lowercase
SELECT first_name, LOWER(first_name) AS lower_name FROM VITECH.PUBLIC.EMPLOYEES;

-- 3. LENGTH / LEN - Get string length
SELECT first_name, LENGTH(first_name) AS name_length FROM VITECH.PUBLIC.EMPLOYEES;

-- 4. CONCAT - Concatenate strings
SELECT CONCAT(first_name, ' ', last_name) AS full_name FROM VITECH.PUBLIC.EMPLOYEES;

-- 5. SUBSTRING / SUBSTR - Extract part of a string
SELECT first_name, SUBSTR(first_name, 1, 3) AS first_3_chars FROM VITECH.PUBLIC.EMPLOYEES;

-- 6. TRIM - Remove leading/trailing spaces
SELECT TRIM('  Hello World  ') AS trimmed_value;

-- 7. REPLACE - Replace occurrences in a string
SELECT email, REPLACE(email, '@sqltutorial.org', '@company.com') AS new_email FROM VITECH.PUBLIC.EMPLOYEES;

-- 8. LPAD / RPAD - Pad string to a certain length
SELECT first_name, LPAD(first_name, 15, '*') AS left_padded FROM VITECH.PUBLIC.EMPLOYEES;

-- 9. REVERSE - Reverse a string
SELECT first_name, REVERSE(first_name) AS reversed_name FROM VITECH.PUBLIC.EMPLOYEES;

-- 10. POSITION / CHARINDEX - Find position of substring
SELECT email, POSITION('@' IN email) AS at_position FROM VITECH.PUBLIC.EMPLOYEES;


-- =============================================
-- 10 NUMBER FUNCTIONS
-- =============================================

-- 1. ROUND - Round to specified decimal places
SELECT salary, ROUND(salary / 3, 2) AS rounded_val FROM VITECH.PUBLIC.EMPLOYEES;

-- 2. CEIL / CEILING - Round up to nearest integer
SELECT salary, CEIL(salary / 3) AS ceiling_val FROM VITECH.PUBLIC.EMPLOYEES;

-- 3. FLOOR - Round down to nearest integer
SELECT salary, FLOOR(salary / 3) AS floor_val FROM VITECH.PUBLIC.EMPLOYEES;

-- 4. ABS - Absolute value
SELECT ABS(-500) AS absolute_value;

-- 5. MOD - Modulus (remainder)
SELECT employee_id, MOD(employee_id, 2) AS is_odd FROM VITECH.PUBLIC.EMPLOYEES;

-- 6. POWER - Raise to a power
SELECT salary, POWER(salary, 2) AS salary_squared FROM VITECH.PUBLIC.EMPLOYEES;

-- 7. SQRT - Square root
SELECT salary, SQRT(salary) AS salary_sqrt FROM VITECH.PUBLIC.EMPLOYEES;

-- 8. TRUNC / TRUNCATE - Truncate to specified decimal places
SELECT salary, TRUNC(salary / 7, 2) AS truncated_val FROM VITECH.PUBLIC.EMPLOYEES;

-- 9. SIGN - Returns -1, 0, or 1
SELECT salary - 10000 AS diff, SIGN(salary - 10000) AS sign_val FROM VITECH.PUBLIC.EMPLOYEES;

-- 10. RANDOM - Generate random number
SELECT employee_id, RANDOM() AS random_number FROM VITECH.PUBLIC.EMPLOYEES;


-- =============================================
-- 10 DATE FUNCTIONS
-- =============================================

-- 1. CURRENT_DATE - Get today's date
SELECT CURRENT_DATE() AS today;

-- 2. CURRENT_TIMESTAMP - Get current date and time
SELECT CURRENT_TIMESTAMP() AS now;

-- 3. DATEADD - Add interval to a date
SELECT hire_date, DATEADD('year', 5, hire_date) AS five_years_later FROM VITECH.PUBLIC.EMPLOYEES;

-- 4. DATEDIFF - Difference between two dates
SELECT first_name, hire_date, DATEDIFF('year', hire_date, CURRENT_DATE()) AS years_employed FROM VITECH.PUBLIC.EMPLOYEES;

-- 5. DATE_PART / EXTRACT - Extract part of a date
SELECT hire_date, DATE_PART('month', hire_date) AS hire_month FROM VITECH.PUBLIC.EMPLOYEES;

-- 6. YEAR / MONTH / DAY - Extract year, month, day
SELECT hire_date, YEAR(hire_date) AS yr, MONTH(hire_date) AS mn, DAY(hire_date) AS dy FROM VITECH.PUBLIC.EMPLOYEES;

-- 7. LAST_DAY - Get last day of the month
SELECT hire_date, LAST_DAY(hire_date) AS month_end FROM VITECH.PUBLIC.EMPLOYEES;

-- 8. DATE_TRUNC - Truncate date to specified part
SELECT hire_date, DATE_TRUNC('month', hire_date) AS month_start FROM VITECH.PUBLIC.EMPLOYEES;

-- 9. TO_DATE - Convert string to date
SELECT TO_DATE('2026-04-27', 'YYYY-MM-DD') AS converted_date;

-- 10. MONTHNAME / DAYNAME - Get name of month or day
SELECT hire_date, MONTHNAME(hire_date) AS month_name, DAYNAME(hire_date) AS day_name FROM VITECH.PUBLIC.EMPLOYEES;


