
# SQL SELECT with WHERE Assignment

## Student Assignment
This repository contains a mini assignment demonstrating the use of the **SELECT** statement with **WHERE conditions** in SQL.

The assignment includes:
- Table creation
- Inserting sample data
- 10 SELECT queries with conditions
- Query outputs

---

# Table Name
students

---

# Table Structure

| Column | Type |
|------|------|
| id | INT (Primary Key) |
| name | VARCHAR(50) |
| age | INT |
| city | VARCHAR(50) |
| marks | INT |

---

# Sample Table Data

| id | name | age | city | marks |
|----|------|-----|------|------|
| 1 | Aryan | 21 | Delhi | 85 |
| 2 | Rahul | 20 | Mumbai | 72 |
| 3 | Sneha | 22 | Pune | 90 |
| 4 | Amit | 19 | Delhi | 60 |
| 5 | Neha | 21 | Mumbai | 88 |

---

# SQL Commands Used

## SELECT
The **SELECT** command is used to retrieve data from a table.

Example:

```sql
SELECT * FROM students;
```

This displays all rows and columns from the table.

---

# WHERE Clause
The **WHERE clause** is used to filter records based on conditions.

Example:

```sql
SELECT * FROM students
WHERE city = 'Delhi';
```

This returns only students who live in Delhi.

---

# Queries

### Query 1 – Students from Delhi
```sql
SELECT * FROM students WHERE city='Delhi';
```

### Query 2 – Students scoring more than 80
```sql
SELECT name,marks FROM students WHERE marks>80;
```

### Query 3 – Students with age 21
```sql
SELECT * FROM students WHERE age=21;
```

### Query 4 – Students not from Mumbai
```sql
SELECT * FROM students WHERE city!='Mumbai';
```

### Query 5 – Students scoring less than 70
```sql
SELECT name FROM students WHERE marks<70;
```

### Query 6 – Students older than 20
```sql
SELECT * FROM students WHERE age>20;
```

### Query 7 – Students from Pune
```sql
SELECT name FROM students WHERE city='Pune';
```

### Query 8 – Marks between 70 and 90
```sql
SELECT * FROM students WHERE marks BETWEEN 70 AND 90;
```

### Query 9 – Names starting with A
```sql
SELECT * FROM students WHERE name LIKE 'A%';
```

### Query 10 – Students from Delhi with marks above 70
```sql
SELECT * FROM students WHERE city='Delhi' AND marks>70;
```

---

# Output
The output of each query is included inside the **assignment.sql** file as comments.

---

# Repository Structure

```
SQL-SELECT-WHERE-Assignment
│
├── assignment.sql
└── README.md
```

---

# Author
Aryan Pandey  
B.Tech CSE (Data Analytics / ML)
