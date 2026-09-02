# Write your MySQL query statement below
SELECT p.project_id,ROUND( AVG(E.experience_years ),2 )AS average_years
FROM Employee E
LEFT JOIN Project P
ON P.employee_id = E.employee_id 
GROUP BY p.project_id