# Using BigQuery ML with dbt

This README.md file provides guidance on how to use BigQuery ML (Machine Learning) with dbt (Data Build Tool) using the dedicated package for seamless integration and data transformation.

## Table of Contents

1. [Introduction](#introduction)
2. [Prerequisites](#prerequisites)
3. [Installation](#installation)
4. [ML in dbt package](#dbt_ml)
5. [Related repository](#Repository)
6. [Resources](#Resources)

## Introduction

BigQuery ML is a machine learning service provided by Google BigQuery, allowing users to create and execute machine learning models using SQL queries. <br>
dbt, on the other hand, is a powerful data transformation tool that enables you to transform and model your data. <br>
The dbt_ml package bridges the gap between the two, making integrating machine learning into your data transformation workflows easier.


## Prerequisites

Before you begin, ensure you have the following prerequisites in place:

- Access to Google BigQuery with appropriate permissions.
- [dbt](https://www.getdbt.com/) installed on your local machine or access to dbt cloud.
- Established connection between the BigQuery database and dbt.

## Installation

To get started, you need to install  dbt_ml dbt package. To do this just add the following to the ```packages.yml```:

```
packages:
  - package: kristeligt-dagblad/dbt_ml
    version: 0.6.0
```
And then run ```dbt deps```

## dbt_ml

Package for dbt that allows users to train, audit, and use BigQuery ML models. <br>
The package implements a model materialization that trains a BigQuery ML model from a select statement and a set of parameters. <br>
In addition to the model materialization a set of helper macros that assist with model audit and prediction are included.

## Repository
This repository is part of the BigQuery ML Proof of Concept project and it is related to other repositories linked below:
- https://github.com/kkignasiak98/BQML_POC






### Resources
- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
- Read the documentation of dbt_ml package  [dbt_ml](https://hub.getdbt.com/kristeligt-dagblad/dbt_ml/latest)
- Checkout additional resources about the BigQueryML in dbt  [medium](https://medium.com/@hanneskindbom/smart-training-of-bigquery-ml-models-with-dbt-6b74c57b6033)
- Check out [Discourse](https://discourse.getdbt.com/) for commonly asked questions and answers
- Join the [dbt community](http://community.getbdt.com/) to learn from other analytics engineers
- Find [dbt events](https://events.getdbt.com) near you
- Check out [the blog](https://blog.getdbt.com/) for the latest news on dbt's development and best practices
