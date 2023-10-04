{{
    config(
        materialized='model',
        ml_config={
            'model_type': 'DNN_LINEAR_COMBINED_CLASSIFIER',
            'activation_fn': 'RELU6',
            'early_stop': true,
            'optimizer': 'ADAGRAD',
            'enable_global_explain':true,
            'tf_version': "2.8.0",
            'input_label_cols':["card_default"],

            'batch_size': 32,
            'MAX_ITERATIONS': 10,
            'dropout': 0.1,
            'hidden_units': [256,128,54],
            'learn_rate': 0.001,
        }
    )
}}

select 
    * EXCEPT(ID) 
from {{ref('stg_bq_ml_id__customer_training_data')}}
