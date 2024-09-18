CREATE TABLE STU_INFO  (
Rno int,
Name VARCHAR(25),
Branch VARCHAR(25)
)

CREATE TABLE RESULT   (
Rno int,
SPI DECIMAL(2,1)
)



CREATE TABLE EMPLOYEE_MASTER (
EmployeeNo VARCHAR(25),
Name VARCHAR(25),
ManagerNo VARCHAR(25)
)

INSERT INTO STU_INFO VALUES
(101,'Raju','CE'),
(102, 'Amit', 'CE' ),
(103, 'Sanjay','ME'),
(104,'Neha','EC'),
(105,'Meera','EE'),
(106,'Mahesh','ME')

INSERT INTO RESULT  VALUES

(101,8.8),
(102,9.2),
(103,7.6),
(104,8.2),
(105,7.0),
(107,8.9)



INSERT INTO EMPLOYEE_MASTER  VALUES
('E01', 'Tarun', NULL),
('E02','Rohan','E02'),
('E03','Priy','E01'),
('E04','Milan','E03'),
('E05','Jay','E01'),
('E06','Anjana','E04')



---LAB 11

--Part – A:
--1. Combine information from student and result table using cross join or Cartesian product.
SELECT * FROM STU_INFO 
CROSS JOIN RESULT
--2. Perform inner join on Student and Result tables.
SELECT *  FROM STU_INFO 
INNER JOIN RESULT
ON STU_INFO.RNO = RESULT.RNO
--3. Perform the left outer join on Student and Result tables.
SELECT * FROM STU_INFO 
LEFT OUTER JOIN RESULT
ON STU_INFO.RNO = RESULT.RNO
--4. Perform the right outer join on Student and Result tables.
SELECT * FROM STU_INFO
RIGHT OUTER JOIN RESULT
ON STU_INFO.RNO = RESULT.Rno
--5. Perform the full outer join on Student and Result tables.
SELECT * FROM STU_INFO
FULL JOIN  RESULT
ON STU_INFO.RNO = RESULT.RNO
--6. Display Rno, Name, Branch and SPI of all students.
SELECT S.RNO,S.NAME,S.BRANCH,R.SPI FROM STU_INFO S
INNER JOIN RESULT R
ON S.RNO = R.RNO
--7. Display Rno, Name, Branch and SPI of CE branch’s student only.
SELECT S.RNO,S.NAME,S.BRANCH,R.SPI FROM STU_INFO S
INNER JOIN RESULT R
ON S.RNO = R.RNO
WHERE S.BRANCH = 'CE'
--8. Display Rno, Name, Branch and SPI of other than EC branch’s student only.
SELECT S.RNO,S.NAME,S.BRANCH,R.SPI FROM STU_INFO S
INNER JOIN RESULT R 
ON S.RNO = R.Rno
WHERE S.BRANCH != 'CE'
--9. Display average result of each branch.
SELECT AVG(R.SPI),S.BRANCH 
FROM STU_INFO S INNER JOIN RESULT R
ON S.RNO = R.RNO
GROUP BY S.BRANCH
--10. Display average result of CE and ME branch.
SELECT AVG(R.SPI),S.BRANCH
FROM STU_INFO S INNER JOIN RESULT R
ON S.RNO = R.RNO
WHERE S.Branch IN ('CE','EC')
GROUP BY S.BRANCH


--Part – B:
--1. Display average result of each branch and sort them in ascending order by SPI.
SELECT AVG(R.SPI),S.BRANCH
FROM STU_INFO S INNER JOIN RESULT R
ON S.RNO = R.RNO
GROUP BY S.BRANCH
ORDER BY AVG(R.SPI)
--2. Display highest SPI from each branch and sort them in descending order.
SELECT MAX(R.SPI),S.BRANCH
FROM STU_INFO S INNER JOIN RESULT R
ON S.RNO = R.RNO
GROUP BY S.BRANCH
ORDER BY MAX(R.SPI) DESC
--Part – C:
--1. Retrieve the names of employee along with their manager’s name from the Employee table.
SELECT E1.NAME AS EMPOLYEE_NAME, E2.NAME AS MANAGER_NAME
FRO EMPLOYEE_MASTER AS E1