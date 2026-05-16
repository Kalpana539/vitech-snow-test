

select * from OMS_DEV.BRONZE.ORDERS;

select order_id,
      quantity,
      category from OMS_DEV.BRONZE.ORDERS;

create view OMS_DEV.GOLD.orders_v
as
select order_id,
      quantity,
      category from OMS_DEV.BRONZE.ORDERS;


select * from OMS_DEV.GOLD.orders_v;

show views ;




create view oms_dev.gold.emp_dep_v
as
 select e.employee_id,
        e.first_name,
        e.salary,
        e.department_id ,
        d.department_name
        from vitech.public.employees  e   inner join vitech.public.departments d 
              on e.department_id = d.department_id ;
              
delete from vitech.public.employees  where salary  < 15000 ;


select * from oms_dev.gold.emp_dep_v;


delete from oms_dev.gold.emp_dep_v;




create secure view oms_dev.gold.emp_dep_sv
as
 select e.employee_id,
        e.first_name,
        e.salary,
        e.department_id ,
        d.department_name
        from vitech.public.employees  e   inner join vitech.public.departments d 
              on e.department_id = d.department_id ;


select * from oms_dev.gold.emp_dep_sv;

show views ;





create materialized view oms_dev.gold.emp_dep_mv
as
 select e.employee_id,
        e.first_name,
        e.salary,
        e.department_id
        from vitech.public.employees e  ;


select * from oms_dev.gold.emp_dep_mv;


---------------------------------------
-- Remove caching just to have a fair test -- Part 1

ALTER SESSION SET USE_CACHED_RESULT=FALSE; -- disable global caching
ALTER warehouse compute_wh suspend;
ALTER warehouse compute_wh resume;



-- Prepare table
CREATE OR REPLACE TRANSIENT DATABASE ORDERS;

CREATE OR REPLACE SCHEMA TPCH_SF100;

CREATE OR REPLACE TABLE TPCH_SF100.ORDERS AS
SELECT * FROM SNOWFLAKE_SAMPLE_DATA.TPCH_SF100.ORDERS;

SELECT * FROM ORDERS LIMIT 100



-- Example statement view -- 
SELECT
YEAR(O_ORDERDATE) AS YEAR,
MAX(O_COMMENT) AS MAX_COMMENT,
MIN(O_COMMENT) AS MIN_COMMENT,
MAX(O_CLERK) AS MAX_CLERK,
MIN(O_CLERK) AS MIN_CLERK
FROM ORDERS.TPCH_SF100.ORDERS
GROUP BY YEAR(O_ORDERDATE)
ORDER BY YEAR(O_ORDERDATE);




-- Create materialized view
CREATE OR REPLACE MATERIALIZED VIEW ORDERS_MV
AS 
SELECT
YEAR(O_ORDERDATE) AS YEAR,
MAX(O_COMMENT) AS MAX_COMMENT,
MIN(O_COMMENT) AS MIN_COMMENT,
MAX(O_CLERK) AS MAX_CLERK,
MIN(O_CLERK) AS MIN_CLERK
FROM ORDERS.TPCH_SF100.ORDERS
GROUP BY YEAR(O_ORDERDATE);


SHOW MATERIALIZED VIEWS;

-- Query view
SELECT * FROM ORDERS_MV
ORDER BY YEAR;



-- UPDATE or DELETE values
UPDATE ORDERS
SET O_CLERK='Clerk#11100000' 
WHERE O_ORDERDATE='1993-01-01'

