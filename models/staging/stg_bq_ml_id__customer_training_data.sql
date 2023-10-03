{{
    config(
        materialized='table'
    )
}}

with import AS (
 SELECT 
        *
    FROM {{ source('BQ_ML_ID', 'CUSTOMER_DEFAULT_DATA') }}
),

cleaned AS (

     WITH CTE AS (
      SELECT *
      FROM import
      WHERE card_default = 0
      LIMIT 6000
    )

    SELECT * 
    FROM CTE

    UNION ALL
    SELECT *
    FROM import
    WHERE card_default = 1
    
)

SELECT * 
FROM cleaned