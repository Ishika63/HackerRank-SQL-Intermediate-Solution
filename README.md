
# Hackerrank SQL (Intermediate) Skills Certification Test Solution
This repository contains MySQL solutions of the HackerRank SQL Intermediate Certificate problems which I encountered during the test. Please check 1. SQL-Business-Expansion and 2. SQL-Product-Sales-per-City files for the solutions I submitted!

### Key competencies:
1. **Complex joins-** This competency includes using INNER, LEFT, RIGHT, and FULL joins on multiple tables and using joins for many-to-many relationships.
2.  **Unions-** This competency includes using unions to display multiple sets of information in the same report.
3. **Subqueries-** This competency includes using data based on information returned from a different query. The ability to reduce selection set through the effective ordering of subqueries.
   



## Question 1: Business Expansion 
As part of business expansion efforts at a company, your help is needed to find all pairs of customers and agents who have been in contact more than once. For each such par, display the user id, first name, and last name, and the customer id, name, and the number of their contacts. Order the result by user id ascending.

There are 3 tables: customer, user_account, contact.

Table 1: **Customer**

|   Name           | Type          | Description                                    |
|-----------------|---------------|------------------------------------------------|
| id              | int           | This is a primary key                          |
| customer_name   | varchar(255)  | Name of the customer                          |
| city_id         | int           | A unique id for the city in which the customer resides |
| customer_address| varchar(255)  | Customer's address                            |
| contact_person  | varchar(255)  | Person of contact. Can be null.               |
| email           | varchar(128)  | Email address of the customer                 |
| phone           | varchar(128)  | Phone number for the customer                 |
| is_active       | int           | Boolean to denote if the customer is active   |

Table 2: **user_account**

| Name          | Type          | Description                                    |
|---------------|---------------|------------------------------------------------|
| id            | int           | This is a primary key                          |
| firstname     | varchar(64)   | First name of the user                        |
| last_name     | varchar(64)   | Last name of the user                         |
| user_name     | varchar(128)  | User name for the user                        |
| password      | varchar(255)  | Password of the account                       |
| email         | varchar(128)  | Email address of the user                     |
| phone         | varchar(128)  | Contact number for the user. Can be null.     |
| is_active     | int           | Boolean to denote if the user_account is active |

Table 3: **contact**

| Name               | Type          | Description                                           |
|--------------------|---------------|-------------------------------------------------------|
| id                 | int           | This is a primary key                                 |
| user_account_id    | int           | Foreign key referencing user_account.id              |
| customer_id        | int           | Foreign key referencing customer.id                  |
| contact_type_id    | int           | Type of the contact                                  |
| contact_outcome_id | int           | Can be null                                          |
| additional_comment | varchar(255)  | Can be null                                          |
| initiated_by_customer | int        | Boolean                                             |
| initiated_by_user  | int           | Boolean                                             |




## Question 2: Product Sales per City
This is a SQL query to get the total amount spent on each product in each city. The result includes the names of the city and product, as well as the total amount spent on the product, rounded to 2 decimal places. The result is ordered by the amount spent from high to low, and then by city name and product name in ascending order.

There are 5 tables in this schema: city, customer, invoice, invoice_item, and product.

Table 1: **city**

| Name        | Type          | Description                                   |
|-------------|---------------|-----------------------------------------------|
| id          | int           | This is a primary key                         |
| city_name   | varchar(128)  | Name of the city                             |
| postal_code | varchar(16)   | Postal code of the city                      |
| country_id  | int           | Unique id representing different countries |

Table 2: **customer**

| Name           | Type          | Description                          |
|----------------|---------------|--------------------------------------|
| id             | int           | This is a primary key                |
| customer_name  | varchar(255)  | Customer name                        |
| city_id        | int           | Foreign key referencing city.id      |
| customer_address | varchar(255) | Address                              |
| contact_person | varchar(255)  | Can be NULL                          |
| email          | varchar(128)  | Email                                |
| phone          | varchar(128)  | Phone number                         |
| is_active      | int           | Boolean                              |

Table 3: **invoice**

| Name           | Type          | Description                                   |
|----------------|---------------|-----------------------------------------------|
| id             | int           | This is a primary key                         |
| invoice_number | varchar(255)  | Invoice number                               |
| customer_id    | int           | Foreign key referencing customer.id          |
| user_account_id| int           | Account ID                                   |
| total_price    | decimal(8.2)  | Total price                                  |

Table 4: **invoice_item**

| Name             | Type          | Description                                   |
|------------------|---------------|-----------------------------------------------|
| id               | int           | This is a primary key                         |
| invoice_id       | int           | Foreign key referencing invoice.id           |
| product_id       | int           | Foreign key referencing product.id           |
| quantity         | int           | Quantity                                     |
| price            | decimal(8,2)  | Price                                        |
| line_total_price | decimal(8,2)  | Line total price                             |

Table 5: **product**

| Name               | Type          | Description                                       |
|--------------------|---------------|---------------------------------------------------|
| id                 | int           | This is a primary key                             |
| product_name       | varchar(128)  | Name of the product                               |
| product_description| varchar(255)  | Description of the product                        |
| current_price      | decimal(8,2)  | Current price                                    |
| quantity_in_stock  | decimal(8,2)  | Quantity                                         |
| is_active          | int           | Boolean                                           |
