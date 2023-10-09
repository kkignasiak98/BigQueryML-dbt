{{
    config(
        materialized='model',
        ml_config={
            'model_type': 'logistic_reg',
            'early_stop': true,
            'input_label_cols':["card_default"]
        }
    )
}}

WITH eval_data AS (
   SELECT
        * EXCEPT(ID)
    FROM {{ref('stg_bq_ml_id__customer_training_data')}} 
)

select * from {{ dbt_ml.predict(ref('ml_model_pca'), 'eval_data') }}