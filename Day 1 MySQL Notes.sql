Day 1 MySQL Notes 
These are my Day 1 MySQL learning notes, covering basic queries, table operations, distinct values, functions, and common data types.

## 🔍 Basic SELECT Queries

### Get all data from a table
SELECT * FROM table_name;

### Get data from a specific table inside a database
SELECT * FROM database_name.table_name;

### Select a specific column
SELECT column_name FROM table_name;

### Select multiple columns
SELECT column1, column2, column3 FROM table_name;


## 🎯 Operator Priority (PEMDAS)

P → Parentheses
E → Exponents (not much in SQL)
M → Multiplication
D → Division
A → Addition
S → Subtraction

SQL follows the same arithmetic priority order.


## 🆔 DISTINCT (Unique Values Only)

### Get unique values
SELECT DISTINCT name, id FROM employees;
## DISTINCT removes all duplicate rows.

## 🏫 Database and Table Creation

### Create a database
CREATE DATABASE college;

### Use a database
USE college;

### Create a table
CREATE TABLE students(
    id INT,
    name VARCHAR(30),
    mob BIGINT,
    department VARCHAR(40)
);

### Insert data
INSERT INTO students(id, name, mob, department)
VALUES 
(11, 'Aslim', 9325789122, 'Comp'),
(12, 'Shri', 9325789111, 'IT');
```

---

## 📄 Select Queries Examples

## Select all students
SELECT * FROM students;

### Select names and departments
SELECT name, department FROM students;

### Rename columns using AS
SELECT name AS student_name, mob AS student_mobile FROM students;

### Using arithmetic in SELECT
SELECT name, id, id * 2 AS new_id FROM students;

### Select top N rows (LIMIT)
SELECT name FROM employees LIMIT 3;

## 🔗 String Functions

### Concatenate two columns
SELECT CONCAT(name, id) AS result FROM students;

### Add a space between values
SELECT CONCAT(name, ' ', id) AS result FROM students;

### Add custom text between columns

SELECT CONCAT(name, ' queen ', id) AS result FROM students;


## 📚 MySQL Data Types (Important)

### 1️⃣ INT

* Stores whole numbers
* Examples → Age, ID, Quantity

### 2️⃣ VARCHAR(n)

* Variable-length text
* Examples → Names, Emails, City

### 3️⃣ CHAR(n)

* Fixed-length text
* Examples → Gender ('M', 'F'), Country Code ('IN')

### 4️⃣ FLOAT / DOUBLE / DECIMAL

* Decimal numbers
* Examples → Price, Weight, Salary

### 5️⃣ DATE / DATETIME / TIMESTAMP

* To store dates & times
* Examples → DOB, Join Date, Order Time

### 6️⃣ BOOLEAN / TINYINT(1)

* TRUE/FALSE values
* Examples → is_active, is_verified

### 7️⃣ TEXT / LONGTEXT

* Long text
* Examples → Descriptions, Notes, Comments
