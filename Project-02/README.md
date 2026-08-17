# Project 02 – Sales Type Analysis

## Overview

This project analyzes sales invoices by sales type using Microsoft SQL Server.

## Objective

The objective is to calculate the number of invoices for each sales type and determine the relative share of each sales type compared with the total number of invoices.

## SQL Concepts

* `COUNT()`
* `GROUP BY`
* `ORDER BY`
* Subquery
* Aggregate functions
* Percentage / ratio calculation

## Database

**Database:** Sepidar01
**Schema:** SLS
**Table:** Invoice

## Key Analysis

The query groups invoices by `SaleTypeRef` and calculates the contribution of each sales type to the total number of invoices.

## SQL File

The SQL query for this project is available in:

`project-02.sql`
