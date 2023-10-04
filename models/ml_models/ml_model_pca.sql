{{
    config(
        materialized='model',
        ml_config={
            'model_type': 'PCA',
            'scale_features': true,
            'pca_solver': 'auto',
            'num_principal_components':4

        }
    )
}}

-- works
select 
  PAY_0,
  PAY_2,
  PAY_3,
  PAY_4,
  PAY_5,
  PAY_6
from {{ref('stg_bq_ml_id__customer_training_data')}}
