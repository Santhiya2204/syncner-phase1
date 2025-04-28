CREATE TABLE department_stats (
    department VARCHAR(100) PRIMARY KEY,
    avg_salary DECIMAL(10, 2)
);
INSERT INTO department_stats (department, avg_salary)
VALUES 
    ('Engineering', 0),
    ('HR', 0),
    ('Sales', 0);
	CREATE PROCEDURE CalculateAverageSalary 
    @department_name VARCHAR(100)
AS
BEGIN
    DECLARE @average_salary DECIMAL(10, 2);
    SELECT @average_salary = AVG(salary)
    FROM employees
    WHERE department = @department_name;
    UPDATE department_stats
    SET avg_salary = @average_salary
    WHERE department = @department_name;
END;    


EXEC CalculateAverageSalary 'Engineering';
SELECT * FROM department_stats WHERE department = 'Engineering';
