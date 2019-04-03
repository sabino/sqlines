
WITH base as (
SELECT 
    1::SMALLINT as smallint_field,
    2::INTEGER as integer_field,
    1999999999999999::BIGINT as bigint_field,
    2.5::FLOAT as float_field,
    2.62162::DECIMAL as decimal_field,
    6.126::DOUBLE PRECISION as double_precision_field,
    true::BOOLEAN as boolean_field,
    'a sample text'::TEXT as text_field,
    'a sample varchar'::VARCHAR as varchar_field,
    '2019-01-01'::DATE as date_field,
    '2019-01-01 01:01:01'::TIMESTAMP as timestamp_field,
    '2019-01-01 01:01:01 GMT-1'::TIMESTAMPTZ as timestampz_field)
SELECT *,
       CAST(text_field AS VARCHAR) AS cast_text_to_varchar_field
FROM base


