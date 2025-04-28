CREATE TABLE department (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100)
);
drop table employees
CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    department VARCHAR(100),
    salary DECIMAL(10, 2)
);
INSERT INTO department (department_id, department_name) 
VALUES 
    (1, 'Engineering'),
    (2, 'HR'),
    (3, 'Sales');
INSERT INTO employees (id, name, department, salary) 
VALUES 
    (4, 'Diana', 'HR', 60000),
    (5, 'Evan', NULL, 55000);
SELECT e.name, e.department 
FROM employees e
INNER JOIN department d ON e.department = d.department_name;
SELECT e.name, e.department, d.department_name
FROM employees e
LEFT JOIN department d ON e.department = d.department_name;
SELECT e.name, e.department, d.department_name
FROM employees e
RIGHT JOIN department d ON e.department = d.department_name;
SELECT e.name, e.department, d.department_name
FROM employees e
LEFT JOIN department d ON e.department = d.department_name
UNION
SELECT e.name, e.department, d.department_name
FROM employees e
RIGHT JOIN department d ON e.department = d.department_name;


