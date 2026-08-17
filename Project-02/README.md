# Project 02 – Sales Type Analysis

## Overview

This project focuses on analyzing sales types in the `SLS.Invoice` table using Microsoft SQL Server.

The analysis identifies the unique sales types, calculates the number of invoices for each sales type, and determines the relative percentage of each sales type compared with the total number of invoices.

## Objective

The main objectives of this project are:

* Identify unique values in the `SalesTypeRef` column.
* Calculate the number of invoices for each sales type.
* Calculate the relative percentage of each sales type compared with the total.
* Sort the results based on their percentage contribution.

## Database

**Database:** Sepidar01
**Schema:** SLS
**Table:** Invoice

## SQL Concepts

* `SELECT`
* `COUNT()`
* `GROUP BY`
* `ORDER BY`
* Subqueries
* Aggregate functions
* Relative percentage calculation

## Analysis

The project groups invoice records according to `SalesTypeRef`. For each sales type, the total number of invoices is calculated and compared with the overall number of invoices in the table.

This provides a clear view of the distribution and relative contribution of different sales types within the invoice data.

## SQL File

The complete SQL query used for this project is available in:

`project-02.sql`
