create database CRUDOperations;
use CRUDOperations
CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    department VARCHAR(100),
    salary DECIMAL(10, 2)
);
INSERT INTO employees (id, name, department, salary) 
VALUES 
    (1, 'Alice', 'Engineering', 75000),
    (2, 'Bob', 'Marketing', 65000),
    (3, 'Charlie', 'Engineering', 80000);
UPDATE employees
SET salary = 70000
WHERE id = 2;
SELECT * FROM employees
WHERE department = 'Engineering';
DELETE FROM employees
WHERE id = 3;
ALTER TABLE employees
ADD appraisal_percentage DECIMAL(5, 2);
SELECT * FROM employees
WHERE department = 'Engineering';
SELECT * FROM employees
WHERE department = 'Marketing';


