CREATE TABLE CRICKET(
NAME VARCHAR(50),
CITY VARCHAR(50),
AGE INT)

--INSERT VALUS
 INSERT INTO CRICKET VALUES
 ('Sachin Tendulkar','Mumbai',30),
 ('Rahul Dravid','Bombay',35),
 ('M. S. Dhoni ','Jharkhand',31),
 ('Suresh Raina ','Gujarat',30)


 --Part A

-- 1. Create table Worldcup from cricket with all the columns and data.
SELECT * INTO WORLDCUP FROM CRICKET
SELECT * FROM WORLDCUP
--2. Create table T20 from cricket with first two columns with no data.
SELECT NAME,CITY INTO T20 FROM CRICKET WHERE 2+2=5
SELECT * FROM T20
--3. Create table IPL From Cricket with No DataSELECT * INTO IPL FROM CRICKET WHERE 1+2 = 4SELECT * FROM IPL--UPDATE OPRATION--1. Update deposit amount of all customers from 3000 to 5000. (Use Deposit Table)
UPDATE DEPOSIT SET AMOUNT = 5000 WHERE AMOUNT = 3000
SELECT * FROM DEPOSIT
--2. Change branch name of ANIL from VRCE to C.G. ROAD. (Use Borrow Table)
UPDATE BORROW SET BNAME ='C.G.ROAD' WHERE BNAME ='VRCE' AND CNAME='ANLI' 
SELECT *FROM BORROW
--3. Update Account No of SANDIP to 111 & Amount to 5000. (Use Deposit Table)
UPDATE DEPOSIT SET ACTNO = 111,AMOUNT = 5000 WHERE CNAME ='SANDIP'
SELECT *FROM DEPOSIT
--4. Update amount of KRANTI to 7000. (Use Deposit Table)
UPDATE DEPOSIT SET AMOUNT = 7000 WHERE CNAME ='KRANTI'
SELECT * FROM DEPOSIT
--5. Update branch name from ANDHERI to ANDHERI WEST. (Use Branch Table)
UPDATE BRANCH SET BNAME  = 'ANDHERI WEST' WHERE BNAME ='ANDHERI' 
SELECT * FROM BRANCH
--6. Update branch name of MEHUL to NEHRU PALACE. (Use Deposit Table)
UPDATE DEPOSIT SET BNAME ='NEHRU PALACE' WHERE CNAME = 'MEHUL'
SELECT * FROM DEPOSIT
--7. Update deposit amount of all depositors to 5000 whose account no between 103 & 107. (Use Deposit
--Table)
UPDATE DEPOSIT SET AMOUNT = 5000 WHERE ACTNO BETWEEN  103 AND 107
SELECT * FROM DEPOSIT
--8. Update ADATE of ANIL to 1-4-95. (Use Deposit Table)
UPDATE DEPOSIT SET ADATE ='1995-4-1' WHERE CNAME ='ANIL'
SELECT * FROM DEPOSIT
--9. Update the amount of MINU to 10000. (Use Deposit Table)
UPDATE DEPOSIT SET AMOUNT = 1000 WHERE CNAME = 'MINU'
SELECT * FROM DEPOSIT
--10. Update deposit amount of PRAMOD to 5000 and ADATE to 1-4-96 (Use Deposit Table)
UPDATE DEPOSIT SET AMOUNT = 5000,ADATE='1996-4-1'
SELECT * FROM DEPOSIT

--LAB 2 SELECT PART B
CREATE TABLE EMPLOYEE(
NAME VARCHAR(50),
CITY VARCHAR(50),
AGE INT)

--INSERT VLELUS
 INSERT INTO EMPLOYEE VALUES
 ('Jay Patel ','Rajkot',30),
 ('Rahul Dave','Baroda',35),
 ('Jeet Pate','Surat',31),
 ('Vijay Raval','Rajkot',30)

 --1
 SELECT * INTO Employee_detail FROM EMPLOYEE
 SELECT* FROM Employee_detail

 --2
SELECT NAME,CITY INTO  Employee_data FROM EMPLOYEE WHERE 2+2=5
SELECT *FROM EMPLOYEE
--3
SELECT * INTO Employee_info FROM EMPLOYEE WHERE 1+2 = 4SELECT * FROM Employee_info

--PART C 

INSERT INTO Employee_info SELECT * FROM EMPLOYEE WHERE  CITY ='RAJKOT'
INSERT INTO Employee_info SELECT * FROM EMPLOYEE WHERE  AGE>32

--PART B

--1
UPDATE BORROW SET AMOUNT= AMOUNT*1.1
--2
UPDATE DEPOSIT SET AMOUNT = AMOUNT*2.2