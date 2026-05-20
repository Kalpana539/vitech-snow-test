
 CREATE OR REPLACE STAGE aws_int.external_stages.csv_folder
    URL = 's3://kalpana-snow-20/csv/'
    STORAGE_INTEGRATION = s3_int
    FILE_FORMAT = aws_int.file_formats.csv_fileformat;
y