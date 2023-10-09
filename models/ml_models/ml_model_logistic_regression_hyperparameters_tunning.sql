{{
    config(
        materialized='model',
        ml_config={
            'model_type': 'logistic_reg',
            'early_stop': true,
            'input_label_cols':["card_default"],

            'num_trials': 20,
            'max_parallel_trials': 4,
            'hparam_tuning_algorithm': 'VIZIER_DEFAULT',
            'hparam_tuning_objectives': ['ROC_AUC'],
            'data_split_method': 'AUTO_SPLIT',

            'l1_reg': dbt_ml.hparam_range(0, 10),
            'l2_reg': dbt_ml.hparam_range(0, 10)

        }
    )
}}
-- works
select 
    * EXCEPT(ID)
from {{ref('stg_bq_ml_id__customer_training_data')}}