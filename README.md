# sql-bookstore-project
# SQL Developer Internship - Task 1

This repository contains my submission for the first SQL task from Elevate Labs.

## Project: Online Bookstore Database

I have created a database schema for an online bookstore. The deliverables include:
* **`bookstore_schema.sql`**: The SQL script to create the database and tables.
* **`Bookstore_ER_Diagram.drawio.png`**: The Entity-Relationship diagram that visualizes the database structure.

---

## Theoretical Questions & Answers

**1. What is normalization?**
It's the process of organizing tables to reduce data repetition and improve data integrity.

**2. Explain primary vs foreign key.**
A Primary Key uniquely identifies a record in a table. A Foreign Key links a record to a primary key in another table.

**3. What are constraints?**
Rules enforced on data columns to ensure accuracy, like `NOT NULL` or `UNIQUE`.

**4. What is a surrogate key?**
An artificial key (like an `AUTO_INCREMENT` ID) that has no business meaning but is used to uniquely identify a record.

**5. How do you avoid data redundancy?**
Mainly through normalization, by splitting data into related tables so information is stored only once.

**6. What is an ER diagram?**
A visual chart showing database tables and their relationships.

**7. What are the types of relationships in DBMS?**
One-to-One, One-to-Many, and Many-to-Many.

**8. Explain the purpose of AUTO_INCREMENT.**
It automatically generates a unique number for a new record, often used for primary keys.

**9. What is the default storage engine in MySQL?**
InnoDB.

**10. What is a composite key?**
A key that consists of two or more columns combined to create a unique identifier.
