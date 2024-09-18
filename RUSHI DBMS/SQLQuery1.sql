--Part – A:
--1. Find all persons with their department name & code.
 SELECT DEPT.DepartmentName,DEPT.DepartmentCode,PERSON.PersonName
 FROM DEPT INNER JOIN PERSON ON 
 DEPT.DepartmentID=PERSON.DepartmentID

--2. Find the person's name whose department is in C-Block.
 SELECT DEPT.Location,PERSON.PersonName
 FROM DEPT INNER JOIN PERSON ON 
 DEPT.DepartmentID=PERSON.DepartmentID
 WHERE DEPT.Location='C-Block'

--3. Retrieve person name, salary & department name who belongs to Jamnagar city.
 SELECT DEPT.DepartmentName,PERSON.PersonName,PERSON.Salary,PERSON.City
 FROM DEPT INNER JOIN PERSON ON 
 DEPT.DepartmentID=PERSON.DepartmentID
 WHERE PERSON.City='Jamnagar'

--4. Retrieve person name, salary & department name who does not belong to Rajkot city.
 SELECT DEPT.DepartmentName,PERSON.PersonName,PERSON.Salary,PERSON.City
 FROM DEPT INNER JOIN PERSON ON 
 DEPT.DepartmentID=PERSON.DepartmentID
 WHERE PERSON.City!='Rajkot'

--5. Retrieve person’s name of the person who joined the Civil department after 1-Aug-2001.
 SELECT DEPT.DepartmentName,PERSON.PersonName,PERSON.JoiningDate
 FROM DEPT INNER JOIN PERSON ON 
 DEPT.DepartmentID=PERSON.DepartmentID
 WHERE PERSON.JoiningDate>'2001-08-01' and DEPT.DepartmentName='Civil'

--6. Find details of all persons who belong to the computer department.
 SELECT DEPT.DepartmentName,PERSON.PersonName
 FROM DEPT INNER JOIN PERSON ON 
 DEPT.DepartmentID=PERSON.DepartmentID
 WHERE DEPT.DepartmentName='Computer'

--7. Display all the person's name with the department whose joining date difference with the current date
--is more than 365 days.
 SELECT DEPT.DepartmentName,PERSON.PersonName,PERSON.JoiningDate
 FROM DEPT INNER JOIN PERSON ON 
 DEPT.DepartmentID=PERSON.DepartmentID
 WHERE GETDATE()-PERSON.JoiningDate>365

--8. Find department wise person counts.
 SELECT DEPT.DepartmentName,COUNT(PERSON.PersonID)
 FROM DEPT INNER JOIN PERSON ON 
 DEPT.DepartmentID=PERSON.DepartmentID
 GROUP BY DEPT.DepartmentName

--9. Give department wise maximum & minimum salary with department name.
 SELECT DEPT.DepartmentName,MAX(PERSON.Salary),MIN(PERSON.Salary)
 FROM DEPT INNER JOIN PERSON ON 
 DEPT.DepartmentID=PERSON.DepartmentID
 GROUP BY DEPT.DepartmentName

--10. Find city wise total, average, maximum and minimum salary.
 SELECT MAX(PERSON.Salary),MIN(PERSON.Salary),AVG(PERSON.Salary),SUM(PERSON.Salary),PERSON.City
 FROM DEPT INNER JOIN PERSON ON 
 DEPT.DepartmentID=PERSON.DepartmentID
 GROUP BY PERSON.City

--11. Find the average salary of a person who belongs to Ahmedabad city.
SELECT AVG(PERSON.Salary),PERSON.City
FROM DEPT INNER JOIN PERSON ON 
DEPT.DepartmentID=PERSON.DepartmentID
GROUP BY PERSON.City
HAVING PERSON.City='Ahmedabad'

--12. Produce Output Like: <PersonName> lives in <City> and works in <DepartmentName> Department. (In
--single column)
SELECT CONCAT(PERSON.PersonName,' lives in ',PERSON.City,' and works in ',DEPT.DepartmentName,'Department.')
FROM DEPT INNER JOIN PERSON ON 
DEPT.DepartmentID=PERSON.DepartmentID

--Part – B:
--1. Produce Output Like: <PersonName> earns <Salary> from <DepartmentName> department monthly. (In
--single column)
SELECT CONCAT(PERSON.PersonName,' earns ',PERSON.Salary,' from ',DEPT.DepartmentName,'department monthly.')
FROM DEPT INNER JOIN PERSON ON 
DEPT.DepartmentID=PERSON.DepartmentID

--2. Find city & department wise total, average & maximum salaries.
SELECT MAX(PERSON.Salary),AVG(PERSON.Salary),SUM(PERSON.Salary),PERSON.City,DEPT.DepartmentName
FROM DEPT INNER JOIN PERSON ON 
DEPT.DepartmentID=PERSON.DepartmentID
GROUP BY PERSON.City,DEPT.DepartmentName

--3. Find all persons who do not belong to any department.
SELECT PERSON.PersonName,DEPT.DepartmentName
FROM DEPT RIGHT JOIN PERSON ON 
DEPT.DepartmentID=PERSON.DepartmentID
WHERE PERSON.DepartmentID IS NULL

--4. Find all departments whose total salary is exceeding 100000.
SELECT SUM(PERSON.Salary),DEPT.DepartmentName
FROM DEPT INNER JOIN PERSON ON 
DEPT.DepartmentID=PERSON.DepartmentID
GROUP BY DEPT.DepartmentName
HAVING SUM(PERSON.Salary)>100000

--Part – C:
--1. List all departments who have no person.
SELECT PERSON.PersonName,DEPT.DepartmentName
FROM DEPT LEFT JOIN PERSON ON 
DEPT.DepartmentID=PERSON.DepartmentID
WHERE PERSON.PersonID IS NULL

--2. List out department names in which more than two persons are working.
SELECT DEPT.DepartmentName,COUNT(PERSON.PersonID)
FROM DEPT INNER JOIN PERSON ON 
DEPT.DepartmentID=PERSON.DepartmentID
GROUP BY DEPT.DepartmentName
HAVING COUNT(PERSON.PersonID)>2

--3. Give a 10% increment in the computer department employee’s salary. (Use Update )
UPDATE PERSON
SET Salary=Salary*1.1
WHERE DepartmentID=
(
SELECT DepartmentID
FROM DEPT
WHERE DepartmentName='Computer'
)