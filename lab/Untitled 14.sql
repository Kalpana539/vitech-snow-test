create database aws_int;
create schema ext_stages;

 

describe integration s3_int;

CREATE OR REPLACE FILE FORMAT aws_int.file_formats.csv_fileformat
    TYPE = CSV
    FIELD_DELIMITER = ','
    SKIP_HEADER = 1
    NULL_IF = ('NULL', 'null')
    EMPTY_FIELD_AS_NULL = TRUE
    FIELD_OPTIONALLY_ENCLOSED_BY = '"';


    CREATE OR REPLACE STAGE aws_int.external_stages.csv_folder
    URL = 's3://kalpana-snow-20/csv/'
    STORAGE_INTEGRATION = s3_int
    FILE_FORMAT = aws_int.file_formats.csv_fileformat;

list @aws_int.external_stages.csv_folder;

CREATE OR REPLACE TABLE aws_int.ext_stages.movie_titles (
  show_id STRING,
  type STRING,
  title STRING,
  director STRING,
  cast STRING,
  country STRING,
  date_added STRING,
  release_year STRING,
  rating STRING,
  duration STRING,
  listed_in STRING,
  description STRING
);


COPY INTO aws_int.ext_stages.movie_titles
    FROM @aws_int.external_stages.csv_folder
    FILE_FORMAT = aws_int.file_formats.csv_fileformat;
    
CREATE OR REPLACE STAGE OUR_FIRST_DB.PUBLIC.LOAN_STAGE
    URL = 's3://bucketsnowflakes3/Loan_payments_data.csv';

    CREATE OR REPLACE FILE FORMAT OUR_FIRST_DB.PUBLIC.CSV_INFER
    TYPE = CSV
    PARSE_HEADER = TRUE;


    SELECT * FROM TABLE(
    INFER_SCHEMA(
        LOCATION => '@OUR_FIRST_DB.PUBLIC.LOAN_STAGE',
        FILE_FORMAT => 'OUR_FIRST_DB.PUBLIC.CSV_INFER'
    )
);

CREATE OR REPLACE TABLE OUR_FIRST_DB.PUBLIC.LOAN_PAYMENTS
    USING TEMPLATE (
        SELECT ARRAY_AGG(OBJECT_CONSTRUCT(*))
        FROM TABLE(
            INFER_SCHEMA(
                LOCATION => '@OUR_FIRST_DB.PUBLIC.LOAN_STAGE',
                FILE_FORMAT => 'OUR_FIRST_DB.PUBLIC.CSV_INFER'
            )
        )
    );


    COPY INTO OUR_FIRST_DB.PUBLIC.LOAN_PAYMENTS
FROM @OUR_FIRST_DB.PUBLIC.LOAN_STAGE
FILE_FORMAT = (TYPE = CSV SKIP_HEADER = 1)
MATCH_BY_COLUMN_NAME = CASE_INSENSITIVE;


SELECT COUNT(*) FROM OUR_FIRST_DB.PUBLIC.LOAN_PAYMENTS;
-- Step 1: Create stage pointing to S3 (you only know the URL)
CREATE OR REPLACE STAGE OUR_FIRST_DB.PUBLIC.LOAN_STAGE
    URL = 's3://bucketsnowflakes3/Loan_payments_data.csv';



-- Step 2: Create file format with PARSE_HEADER for CSV
CREATE OR REPLACE FILE FORMAT OUR_FIRST_DB.PUBLIC.CSV_INFER
    TYPE = CSV
    PARSE_HEADER = TRUE;


CREATE OR REPLACE TABLE OUR_FIRST_DB.PUBLIC.LOAN_PAYMENTS
    USING TEMPLATE (
        SELECT ARRAY_AGG(OBJECT_CONSTRUCT(*))
        FROM TABLE(
            INFER_SCHEMA(
                LOCATION => '@OUR_FIRST_DB.PUBLIC.LOAN_STAGE',
                FILE_FORMAT => 'OUR_FIRST_DB.PUBLIC.CSV_INFER'
            )
        )
    );




SELECT * FROM TABLE(
    INFER_SCHEMA(
        LOCATION => '@OUR_FIRST_DB.PUBLIC.LOAN_STAGE',
        FILE_FORMAT => 'OUR_FIRST_DB.PUBLIC.CSV_INFER'
    )
);


COPY INTO OUR_FIRST_DB.PUBLIC.LOAN_PAYMENTS
FROM @OUR_FIRST_DB.PUBLIC.LOAN_STAGE
FILE_FORMAT = (TYPE = CSV SKIP_HEADER = 1)
MATCH_BY_COLUMN_NAME = CASE_INSENSITIVE;







