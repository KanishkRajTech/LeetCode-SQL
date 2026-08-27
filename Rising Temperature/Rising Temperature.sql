# Write your MySQL query statement below
SELECT W.id
FROM WEATHER W
INNER JOIN WEATHER T
WHERE DATEDIFF(W.recordDate ,T.recordDate ) =1
AND W.temperature  > T.temperature  ;