{{
    config(
        materialized='model',
        ml_config={
            'model_type': 'AUTOML_CLASSIFIER',
             'budget_hours':2,
             'optimization_objective': 'MAXIMIZE_AU_ROC',
            'input_label_cols':["card_default"]
        }
    )
}}

select         
    * EXCEPT(ID) 
from {{ref('stg_bq_ml_id__customer_training_data')}}