

-----s3://sunilreddy-snow-20/parquet/  


select * from OUR_FIRST_DB.PUBLIC.ORDERS;


CREATE OR REPLACE STORAGE INTEGRATION my_s3_int
  TYPE = EXTERNAL_STAGE
  STORAGE_PROVIDER = S3
  ENABLED = TRUE 
  STORAGE_AWS_ROLE_ARN = 'arn:aws:iam::417441725948:role/data-unload-rolea'
  STORAGE_ALLOWED_LOCATIONS = (
    's3://sunilreddy-snow-20/parquet/'
  );

  describe integration  my_s3_int;



  copy into 's3://sunilreddy-snow-20/parquet/'
  from (select * from OUR_FIRST_DB.PUBLIC.ORDERS)
   STORAGE_INTEGRATION = my_s3_int
  file_format=(type=csv)



  copy into 's3://sunilreddy-snow-20/parquet/'
  from (select * from OUR_FIRST_DB.PUBLIC.raw_json)
   STORAGE_INTEGRATION = my_s3_int
  file_format=(type=json)
  OVERWRITE = TRUE; 

  --------------------------------

  select * from OUR_FIRST_DB.PUBLIC.ORDERS;

  show tables ;


ALTER TABLE OUR_FIRST_DB.PUBLIC.ORDERS SET DATA_RETENTION_TIME_IN_DAYS = 30;


delete from  OUR_FIRST_DB.PUBLIC.ORDERS;


--offset
SELECT * FROM OUR_FIRST_DB.PUBLIC.ORDERS AT(OFFSET => -60*5);

--timestamp
SELECT * FROM OUR_FIRST_DB.PUBLIC.ORDERS AT(TIMESTAMP => '2026-05-13 12:00:00'::TIMESTAMP_LTZ);

--query id
SELECT * FROM OUR_FIRST_DB.PUBLIC.ORDERS BEFORE(STATEMENT => '<query_id>');




create table  orders_t1  as
(
  SELECT * FROM OUR_FIRST_DB.PUBLIC.ORDERS AT(OFFSET => -60*5)
) 
;


select * from orders_t1 ;

insert into orders (
  select * from orders_t1 
)
;

update orders 
   set quantity = 0  
   ;


   select * from orders ;


   SELECT * FROM OUR_FIRST_DB.PUBLIC.ORDERS AT(OFFSET => -60*1) ;


select sysdate() ;
   --timestamp
SELECT * FROM OUR_FIRST_DB.PUBLIC.ORDERS AT(TIMESTAMP => '2026-05-13 04:40:00.000'::TIMESTAMP);

--query id
SELECT * FROM OUR_FIRST_DB.PUBLIC.ORDERS BEFORE(STATEMENT => '01c45565-0001-b928-000e-9b02000eb6fa');



delete from orders where profit < 100 ;



------------------------------

  create or replace table etl.public.orders_c1    
        clone  OUR_FIRST_DB.PUBLIC.ORDERS ;



  create or replace table etl.public.orders_c2    
        clone  OUR_FIRST_DB.PUBLIC.ORDERS ;


delete from etl.public.orders_c2 ;

 create or replace database   our_first_dbcopy 
       clone   our_first_db  ;

