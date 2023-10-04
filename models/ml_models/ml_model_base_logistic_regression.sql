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

select * from {{ref('stg_bq_ml_id__customer_training_data')}}