# Project 04 – Customer Order Analysis

## Overview

This project analyzes customer order activity using Microsoft SQL Server and the Sepidar01 database.

The project focuses on calculating the number of orders for each customer and analyzing the earliest and latest order registration dates.

## Objectives

The project includes four analytical tasks:

1. Calculate the number of orders for each customer along with the total number of registered orders.
2. Display customer-level order counts together with the overall number of registered orders.
3. Calculate the number of orders for each customer along with the earliest and latest order registration dates for each customer.
4. Display customer order counts together with the earliest and latest order registration dates across all orders.

## Database

**Database:** Sepidar01  
**Schema:** SLS  
**Table:** Invoice

## SQL Concepts

- `GROUP BY`
- `COUNT()`
- `MAX()`
- `MIN()`
- Subqueries
- Aggregate functions
- Customer-level aggregation
- Overall aggregation

## Project Structure

The SQL analysis is divided into four parts:

### Part 1
Calculates the number of orders for each customer and displays the total number of registered orders.

### Part 2
Displays the number of orders for each customer together with the total number of orders in the `SLS.Invoice` table.

### Part 3
Calculates the number of orders for each customer and identifies the earliest and latest order registration dates for each customer.

### Part 4
Calculates customer-level order counts while displaying the earliest and latest order registration dates across the complete invoice dataset.

## Expected Output

The PDF specification indicates an expected output of **824 records** for the customer-based analyses.

## SQL File

The complete SQL queries for this project are available in:

`project-04.sql`
