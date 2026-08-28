# Write your MySQL query statement below
SELECT S.student_id, S.student_name, Sub.subject_name,COUNT(Ex.subject_name ) AS attended_exams
FROM STUDENTS S
CROSS JOIN Subjects Sub
LEFT JOIN Examinations Ex
ON S.student_id = Ex.student_id
AND Ex.subject_name  = Sub.subject_name 
GROUP BY S.student_id, S.student_name, Sub.subject_name
ORDER BY S.student_id, S.student_name 