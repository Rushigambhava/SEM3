CREATE DATABASE CSE_3A_201

CREATE TABLE DEPOSIT(
ACTNO INT,
CNAME VARCHAR(50),
BNAME VARCHAR(50),
AMOUNT DECIMAL(8,2),
ADATE DATETIME)

--INSERT DATA INTO DEPOSIT TABLE
  INSERT INTO DEPOSIT VALUES
  (101,'ANIL','VRCE',1000,'1995-3-1'),
  (102,'SUNIL','AJNI',5000,'1996-1-4'),
  (103,'MEHUL','KAROLBAGH',3500,'1995-11-17'),
  (104,'MADHURI','AJCHANDINI',1200,'1995-12-17'),
  (105,'PRAMOD','M.G. ROAD',3000,'1996-3-27'),
  (106,'SANDIP','ANDHERI',2000,'1996-3-31'),
  (107,'SHIVANI','VIRAR',1000,'1995-9-5'),
  (108,'KRANTI','NEHRU PLACE',5000,'1995-7-2'),
  (109,'MINU','POWAI',7000,'1995-8-10')
  
  
 --CUSTOMERS TABLE
 
 CREATE TABLE BRANCH(
 BNAME VARCHAR(50),
 CITY VARCHAR(50))

 INSERT INTO BRANCH VALUES
 ('VRCE' ,'NAGPUR'),
 ('AJNI' ,'NAGPUR' ),
 ('KAROLBAGH', 'DELHI' ),
 ('CHANDI' ,'DELHI' ),
 ('DHARAMPETH' ,'NAGPUR'),
 ('M.G. ROAD' ,'BANGLORE'),
 ('ANDHERI' ,'BOMBAY'),
 ('VIRAR' ,'BOMBAY' ),
 ('NEHRU PLACE' ,'DELHI'),
 ('POWAI' ,'BOMBAY' )
 
  --CUSTOMERS TABLE

  CREATE TABLE CUSTOMERS(
 CNAME VARCHAR(50),
 CITY VARCHAR(50))

  INSERT INTO CUSTOMERS VALUES
 ('ANIL ' ,'NAGPUR'),
 ('SUNIL' ,'NAGPUR' ),
 ('MEHUL', 'DELHI' ),
 ('MANDAR' ,'DELHI' ),
 ('MADHURI' ,'NAGPUR'),
 ('PRAMOD' ,'NAGPUR'),
 ('SANDIP' ,'SURAT'),
 ('SHIVANI' ,'BOMBAY' ),
 ('KRANTI' ,'BOMBAY'),
 ('NAREN' ,'BOMBAY' )

 SELECT * FROM BORROW